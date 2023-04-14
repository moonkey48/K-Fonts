//
//  ContentView.swift
//  drag_and_drop_list_tutorial
//
//  Created by Jeff Jeong on 2021/10/05.
//
import SwiftUI

struct DataItem : Hashable, Identifiable {
    var id : UUID
    var image: String
    var color: Color
    
    init(image: String, color: Color) {
        self.id = UUID()
        self.image = image
        self.color = color
    }
}

struct DragTest: View {
    
    @State var dataList = [
        DataItem(image: "car", color: .yellow),
        DataItem(image: "airplane", color: .green),
        DataItem(image: "car", color: .orange)
    ]
    
    @State var draggedItem: DataItem?
    
    @State var isEditModeOn: Bool = true
    
    var body: some View {
        VStack {
            Toggle("수정모드:", isOn: $isEditModeOn)
            
            LazyVStack{
                ForEach(dataList, id:\.self) { dataItem in
                    Image(systemName: dataItem.image)
                        .font(.system(size: 50))
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(dataItem.color)
                        .onDrag{
                            self.draggedItem = dataItem
                            return NSItemProvider(object: UIImage(systemName: dataItem.image)!)
                        }
                        .onDrop(of: ["public.image"], delegate: MyDropDelegate(currentItem: dataItem, dataList: $dataList, draggedItem: $draggedItem, isEditModeOn: $isEditModeOn))
                        .onTapGesture {
                            if isEditModeOn {
                                let index = dataList.firstIndex(of: dataItem)!
                                let randomImage = ["car", "airplane", "car"].randomElement()!
                                dataList[index].image = randomImage
                            }
                        }
                }
            }
            .onChange(of: isEditModeOn, perform: { changedEditMode in
                print("변경된 수정모드: \(changedEditMode)")
            })
        }
    }
}

struct MyDropDelegate : DropDelegate {
    
    let currentItem: DataItem
    @Binding var dataList: [DataItem]
    @Binding var draggedItem: DataItem?
    
    @Binding var isEditModeOn: Bool
    
    
    // 드랍에서 벗어났을때
    func dropExited(info: DropInfo) {
        print("MyDropDelegate - dropExited() called")
    }
    
    // 드랍 처리
    func performDrop(info: DropInfo) -> Bool {
        print("MyDropDelegate - performDrop() called")
        guard let item = draggedItem else { return false }
        guard let image = info.itemProviders(for: ["public.image"]).first else { return false }
        image.loadObject(ofClass: UIImage.self) { image, _ in
            if let uiImage = image as? UIImage {
                let index = dataList.firstIndex(of: item)!
                dataList[index].image = uiImage.pngData()?.base64EncodedString() ?? ""
            }
        }
        return true
    }
    
    // 드랍변경
    func dropUpdated(info: DropInfo) -> DropProposal? {
        // 같은 아이템에 드래그 했을때 +표시 없애기
        return DropProposal(operation: .move)
    }
}

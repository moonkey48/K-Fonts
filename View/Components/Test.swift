import SwiftUI

struct Drag: View {
    // 📍 넣고싶은 이미지 이름
    let imageList: [String] = ["avocado", "chocolate"]
    // 📍 기본 이미지 => 밥그릇이미지 이름
    @State var imageName = "white"

    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(self.imageList, id: \.self, content: { img in
                    Image(img)
                        .font(.title)
                        .onDrag { NSItemProvider(object: img as NSString) }
                })
            }

            Spacer()
            
            // 📍 여기가 drop 받는 이미지 위치, 밥그릇을 여기 두시면 됩니다.
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
                .onDrop(of: ["public.text"], delegate: DropDelegateObject(imageName: $imageName))
            
            Spacer()
            
        }

    }
}

struct DropDelegateObject: DropDelegate {
    @Binding var imageName: String

    func dropUpdated(info: DropInfo) -> DropProposal? {
        if self.imageName == "" {
            return DropProposal(operation: .forbidden)
        } else {
            return nil
        }
    }

    
    func performDrop(info: DropInfo) -> Bool {
        
        if let item = info.itemProviders(for: ["public.text"]).first {
            
            item.loadItem(forTypeIdentifier: "public.text", options: nil) { (text, err) in
                if let data = text as? Data {
                    
                    // 📍 여기서 드래그한 이미지 이름을 받아서
                    let inputStr = String(decoding: data, as: UTF8.self)

                    // 📍 Binding한 image에 이 입력을 하면 위에 @State로 설정한 이미지 이름 변경
                    self.imageName = inputStr
                }
            }
        } else {
            return false
        }

        return true
    }
}

import SwiftUI

struct Threepieces: View {
    var inputName: String
    @State var next: Bool = false
    @State var offset: CGFloat = 0
    @State var currentPosition = 1
    
    
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("My \(inputName),\nLet's share the cake\nwith mom!")
                .font(.system(size: 30, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(20)
            ZStack {
                HStack(spacing: -30.3) {
                    Image("samcut1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height: 200)
                        .offset(x: -6)
                    Image("samcut2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height:200)
                        .offset(x: -6)
                }
                Image("samcut3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 216, height: 200)
                    .offset(x: 0.7, y: 99.7)
                
                Image("slice\(currentPosition)")
                if currentPosition == 1 {
                    Image("slice\(currentPosition)button")
                        .offset(y:-155)
                        .onTapGesture {
                            currentPosition += 1
                        }
                } else if currentPosition == 2 {
                    Image("slice\(currentPosition)button")
                        .offset(x:-156,y:125)
                        .onTapGesture {
                            currentPosition += 1
                        }
                } else if currentPosition == 3 {
                    Image("slice\(currentPosition)button")
                        .offset(x:-156,y:125)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                if offset == 0 {
                                    offset = -30
                                } else {
                                    offset = 0
                                }
                            }
                        }
                }
            }
            
            Spacer()
            VStack(spacing: 1) {
                Text("How many pieces")
                    .font(.system(size: 25, weight: .semibold))
                Text("should we eat?")
                    .font(.system(size: 25, weight: .semibold))
            }
            Spacer()
                .frame(height: 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .navigationBarHidden(true)
        .fullScreenCover(isPresented: $next, content: {
            
        })
    }
    
    
    struct Threepieces_Previews: PreviewProvider {
        static var previews: some View {
            Threepieces(inputName: "DANA")
        }
    }
}

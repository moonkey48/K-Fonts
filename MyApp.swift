import SwiftUI

@main
struct MyApp: App {
    
    init(){
//        CustomFontObject.registerFonts(fontName: "Pretendard-SemiBold")
        TTFFontObject.registerFonts(fontName: "PretendardVariable")
        
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
//            Drag()
        }
    }
}

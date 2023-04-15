import SwiftUI

@main
struct MyApp: App {
    
    init(){
//        CustomFontObject.registerFonts(fontName: "Pretendard-SemiBold")
        
        OTFFontObject.registerFonts(fontName: "Pretendard-Bold")
        OTFFontObject.registerFonts(fontName: "Pretendard-ExtraBold")
        OTFFontObject.registerFonts(fontName: "Pretendard-Regular")
        OTFFontObject.registerFonts(fontName: "Pretendard-Medium")
        OTFFontObject.registerFonts(fontName: "Pretendard-SemiBold")
        
        
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
//            Drag()
        }
    }
}

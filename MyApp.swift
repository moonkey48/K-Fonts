import SwiftUI

@main
struct MyApp: App {
    
    init(){
        OTFFontObject.registerFonts(fontName: "Pretendard-Bold")
        OTFFontObject.registerFonts(fontName: "Pretendard-ExtraBold")
        OTFFontObject.registerFonts(fontName: "Pretendard-Regular")
        OTFFontObject.registerFonts(fontName: "Pretendard-Medium")
        OTFFontObject.registerFonts(fontName: "Pretendard-SemiBold")
    
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

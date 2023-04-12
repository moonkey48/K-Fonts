import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Intro()
            }
        }
        .navigationViewStyle(.stack)
        .accentColor(ColorHelper.black)
        
    }
}

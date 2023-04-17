import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Intro()
            }
        }
        .navigationViewStyle(.stack)
        .accentColor(ColorHelper.teal)
        
    }
}
extension UINavigationController {
    // Remove back button text
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}

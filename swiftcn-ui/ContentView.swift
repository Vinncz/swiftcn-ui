import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            uiButton (
                color: .pink,
                systemImage: "hand.tap.fill", 
                type: .primary
            ) {
                Text("Tap me!")
            } 
            .onTapGesture() {
                print("Why")
            }
            
            uiButton(action:  {})
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

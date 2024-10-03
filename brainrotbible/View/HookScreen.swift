import SwiftUI

struct HookScreen: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Brainrot Bible")
                .font(.largeTitle)
                .padding()
            Text("Daily brainrot for the modern mogger")
                .padding()
            Text("Powerful brainrot quotes increase your aura and keep your brain feeling skibidi.")
                .padding()
            Spacer()
            NavigationLink(destination: ChooseCategoriesScreen()) {
                Text("Continue")
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    HookScreen()
}

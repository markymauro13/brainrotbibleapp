import SwiftUI

struct HookScreen: View {
    var body: some View {
        VStack {
            Text("Daily brainrot for the modern mogger.")
                .font(.largeTitle)
                .padding()
                .bold()
                .padding(.top, 40)
            Text("Powerful brainrot quotes to increase your aura and keep your brain feeling sigma.")
                .padding()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            NavigationLink(destination: ChooseCategoriesScreen()) {
                Text("Continue")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 20)
        }
    }
}

#Preview {
    HookScreen()
}

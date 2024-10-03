import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome to Brainrot Bible")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                NavigationLink(destination: HookScreen()) {
                    Text("Get Started")
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    OnboardingView()
}

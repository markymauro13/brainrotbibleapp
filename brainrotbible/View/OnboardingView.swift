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
}

#Preview {
    OnboardingView()
}

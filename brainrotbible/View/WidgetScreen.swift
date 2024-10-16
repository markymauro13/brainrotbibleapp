import SwiftUI

struct WidgetScreen: View {
    var body: some View {
        VStack {
            Text("Add widget to home screen")
                .font(.title)
                .bold()
                .padding(.bottom, 30)
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            // Add widget instruction.
            Text("Tap and hold any app icon until the apps feel your aura and start to shake. Then tap the “+” button, search “Brainrot Bible”,  choose your widget size and add widget!")
                .padding(24)
                .font(.title)
            Spacer()
            NavigationLink(destination: SigmaSubscriptionScreen()) {
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
    WidgetScreen()
}


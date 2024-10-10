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
                .padding(10)
            Spacer()
            NavigationLink(destination: SigmaSubscriptionScreen()) {
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
    WidgetScreen()
}


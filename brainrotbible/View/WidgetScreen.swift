import SwiftUI

struct WidgetScreen: View {
    var body: some View {
        VStack {
            Text("Add a widget to home screen")
                .font(.title2)
                .padding()
            // Add widget instruction.
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

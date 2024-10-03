import SwiftUI

struct SigmaSubscriptionScreen: View {
    var body: some View {
        VStack {
            Text("Go Sigma")
                .font(.title)
                .padding()
            Text("Unlock everything with Sigma Subscription")
                .padding()
            Spacer()
            Button(action: {}) {
                Text("Continue")
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
    }
}

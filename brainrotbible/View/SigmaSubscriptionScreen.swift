import SwiftUI

struct SigmaSubscriptionScreen: View {
    var body: some View {
        VStack {
            // Title and Crown Icon
            VStack {
                Image(systemName: "crown.fill") // Replace with actual crown image if available
                    .foregroundColor(.yellow)
                    .font(.title)
                    .padding(.top, 40)
                Text("Go Sigma.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                                }
            .padding(.top, 50)

            Spacer()

            // Subscription text
            Text("Unlock everything with Sigma Subscription!")
                .font(.title2)
                .bold()
                .padding(.bottom, 30)
                .multilineTextAlignment(.center)
                
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .top) {
                    Text("•")
                    Text("Thousands of quotes!")
                }
                HStack(alignment: .top) {
                    Text("•")
                    Text("Change themes and fonts!")
                }
                HStack(alignment: .top) {
                    Text("•")
                    Text("Submit quote ideas to us!")
                }
            }
            .padding()
            
            Spacer()
            // Subscription options
            VStack(spacing: 16) {
                Button(action: {
                    // Handle $24/year action
                }) {
                    Text("$24.00/year ($2/month)")
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                Button(action: {
                    // Handle $35.00 one-time purchase action
                }) {
                    Text("$35.00 pay once")
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 40)

            Spacer()

            // Continue Button
            Button(action: {
                // Handle Continue action
            }) {
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

            // Dismiss button
            Button(action: {
                // Handle Dismiss action
            }) {
                Text("Dismiss")
                    .foregroundColor(.black )
            }
            .padding(.bottom, 20)
        }
    }
}

struct SigmaSubscriptionScreen_Previews: PreviewProvider {
    static var previews: some View {
        SigmaSubscriptionScreen()
    }
}

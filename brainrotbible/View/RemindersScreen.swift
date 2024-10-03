import SwiftUI

struct RemindersScreen: View {
    var body: some View {
        VStack {
            Text("Choose your daily reminder preferences")
                .font(.title2)
                .padding()
            // Add options for setting reminders (time, frequency).
            Spacer()
            NavigationLink(destination: WidgetScreen()) {
                Text("Continue")
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
    }
}

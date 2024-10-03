import SwiftUI

struct ChooseCategoriesScreen: View {
    var body: some View {
        VStack {
            Text("Choose your favorite brainrot categories")
                .font(.title2)
                .padding()
            // Add your list of categories here.
            Spacer()
            NavigationLink(destination: RemindersScreen()) {
                Text("Continue")
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
    }
}

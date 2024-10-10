import SwiftUI

struct ChooseCategoriesScreen: View {
    var body: some View {
        VStack {
            Text("Choose your favorite brainrot categories")
                .font(.title)
                .bold()
                .padding(.bottom, 30)
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                            Text("• Historical")
                            Text("• Zesty")
                            Text("• Relationships")
                            Text("• Memes")
                            Text("• Philospophy")
                            Text("• Anime")
                        }
                            .font(.system(size: 36))
                        
                        
            Spacer()
            NavigationLink(destination: RemindersScreen()) {
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

#Preview {
    ChooseCategoriesScreen()
}

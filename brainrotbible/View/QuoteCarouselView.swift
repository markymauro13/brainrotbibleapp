import SwiftUI

struct QuoteCarouselView: View {
    let category: String
    let quotes: [String]
    @State private var currentIndex = 0
    
    // Timer for auto-rotation
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var isUserInteracting = false
    
    var body: some View {
        VStack {
            Text(category)
                .font(.largeTitle)
                .padding()
            
            TabView(selection: $currentIndex) {
                ForEach(0..<quotes.count, id: \.self) { index in
                    QuoteCard(quote: quotes[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .onReceive(timer) { _ in
                if !isUserInteracting {
                    nextQuote()
                }
            }
            .gesture(
                DragGesture()
                    .onChanged { _ in
                        isUserInteracting = true
                    }
                    .onEnded { _ in
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            isUserInteracting = false
                        }
                    }
            )
            
            HStack {
                Button(action: previousQuote) {
                    Image(systemName: "chevron.left")
                        .font(.title)
                }
                .padding()
                
                Spacer()
                
                Button(action: nextQuote) {
                    Image(systemName: "chevron.right")
                        .font(.title)
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func previousQuote() {
        withAnimation {
            currentIndex = (currentIndex - 1 + quotes.count) % quotes.count
        }
    }
    
    func nextQuote() {
        withAnimation {
            currentIndex = (currentIndex + 1) % quotes.count
        }
    }
}

struct QuoteCard: View {
    let quote: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(radius: 5)
            
            Text(quote)
                .padding()
                .multilineTextAlignment(.center)
        }
        .frame(width: 300, height: 200)
    }
}

struct QuoteCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCarouselView(category: "Sample Category", quotes: ["Sample Quote 1", "Sample Quote 2", "Sample Quote 3"])
    }
}

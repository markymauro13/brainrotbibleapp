import SwiftUI

struct CategoriesView: View {
    let categoryOrder = ["General", "Historical", "Zesty", "Memes", "Philosophy", "Anime"]
    
    let categoryQuotes: [String: [String]] = [
        "General": [
            "Life is what happens when you're busy making other plans.",
            "The only way to do great work is to love what you do.",
            "In the middle of difficulty lies opportunity."
        ],
        "Historical": [
            "I came, I saw, I conquered.",
            "Those who do not learn history are doomed to repeat it.",
            "The only thing we learn from history is that we learn nothing from history."
        ],
        "Zesty": [
            "If life gives you lemons, make lemonade... then find someone whose life gave them vodka.",
            "I'm not arguing, I'm just explaining why I'm right.",
            "I'm not lazy, I'm on energy-saving mode."
        ],
        "Memes": [
            "One does not simply walk into Mordor.",
            "I don't always make memes, but when I do, they're dank.",
            "Such quote. Very inspire. Wow."
        ],
        "Philosophy": [
            "I think, therefore I am.",
            "The unexamined life is not worth living.",
            "He who has a why to live can bear almost any how."
        ],
        "Anime": [
            "Believe it!",
            "I'll take a potato chip... and eat it!",
            "People die if they are killed."
        ]
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categoryOrder, id: \.self) { category in
                    NavigationLink(destination: QuoteCarouselView(category: category, quotes: categoryQuotes[category] ?? [])) {
                        Label(category, systemImage: systemImageForCategory(category))
                    }
                }
            }
            .navigationTitle("Categories")
        }
    }
    
    func systemImageForCategory(_ category: String) -> String {
        switch category {
        case "General": return "gear"
        case "Historical": return "building.columns"
        case "Zesty": return "heart"
        case "Memes": return "star"
        case "Philosophy": return "brain.head.profile"
        case "Anime": return "sparkles"
        default: return "questionmark"
        }
    }
}

#Preview {
    CategoriesView()
}

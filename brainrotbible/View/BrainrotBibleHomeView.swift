//
//  BrainrotHome.swift
//  brainrotbible
//
//  Created by Mark Mauro on 10/15/24.
//

import SwiftUI

struct BrainrotBibleHomeView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeTabView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            CategoriesView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("Categories")
                }
                .tag(1)
            
            ThemesView()
                .tabItem {
                    Image(systemName: "paintpalette")
                    Text("Themes")
                }
                .tag(2)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(4)
        }
        .accentColor(.yellow)
        .background(Color.clear)
    }
}

#Preview {
    BrainrotBibleHomeView()
}

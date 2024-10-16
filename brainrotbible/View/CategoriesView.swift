//
//  CategoriesView.swift
//  brainrotbible
//
//  Created by Mark Mauro on 10/16/24.
//


import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("General")) {
                    Label("General", systemImage: "gear")
                }
                NavigationLink(destination: Text("Historical Quotes")) {
                    Label("Historical", systemImage: "building.columns")
                }
                NavigationLink(destination: Text("Zesty Quotes")) {
                    Label("Zesty", systemImage: "heart")
                }
                NavigationLink(destination: Text("Memes Quotes")) {
                    Label("Memes", systemImage: "star")
                }
                NavigationLink(destination: Text("Philosophy Quotes")) {
                    Label("Philosophy", systemImage: "brain.head.profile")
                }
                NavigationLink(destination: Text("Anime Quotes")) {
                    Label("Anime", systemImage: "sparkles")
                }
                // Add more categories as needed
            }
            .navigationTitle("Categories")
        }
    }
}

#Preview {
    CategoriesView()
}

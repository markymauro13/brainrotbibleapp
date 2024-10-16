//
//  BottomNavigationBar.swift
//  brainrotbible
//
//  Created by Mark Mauro on 10/16/24.
//


import SwiftUI

struct BottomNavigationBar: View {
    var body: some View {
        HStack {
            NavigationLink(destination: OnboardingView()) {
                Image(systemName: "house")
                Text("Home")
            }
            Spacer()
            
        }
        .padding()
        .background(Color.gray.opacity(0.2))
    }
}

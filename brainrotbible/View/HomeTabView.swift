//
//  HomeTabView.swift
//  brainrotbible
//
//  Created by Mark Mauro on 10/16/24.
//


import SwiftUI

struct HomeTabView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                QuoteView()
                Spacer()
            }
            
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "crown.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 30))
                        .padding([.top, .trailing], 20)
                }
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

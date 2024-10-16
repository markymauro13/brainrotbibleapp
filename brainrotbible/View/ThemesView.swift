//
//  ThemesView.swift
//  brainrotbible
//
//  Created by Mark Mauro on 10/16/24.
//


import SwiftUI

struct ThemesView: View {
    @State private var selectedTheme = "Light"
    let themes = ["Light", "Dark", "System"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Select Theme")) {
                    Picker("Theme", selection: $selectedTheme) {
                        ForEach(themes, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Custom Colors")) {
                    ColorPicker("Primary Color", selection: .constant(.blue))
                    ColorPicker("Secondary Color", selection: .constant(.green))
                }
            }
            .navigationTitle("Themes")
        }
    }
}

#Preview {
    ThemesView()
}

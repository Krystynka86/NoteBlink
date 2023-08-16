//
//  SettingsView.swift
//  NoteBlink Watch App
//
//  Created by Cristina on 2023-08-16.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTITY
    
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER
            Slider(value: $value, in: 1...4)
                .accentColor(.accentColor)
            
        } //: VSTACK
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

//
//  SearchBar.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Was können wir für sie tun ?", text: $text)
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.orange, lineWidth: 3)
                )
            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "xmark.circle.fill").foregroundColor(.secondary)
                }
            }
        }
        .padding(.horizontal)
    }
}

//
//  NavigationBar.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        VStack(spacing: 70) {
            ForEach(0..<4, id: \.self) { item in
                Button(action: {
                    // Do something here
                }) {
                    VStack {
                        Image(systemName: "person.crop.circle")
                            .imageScale(.small)
                            .foregroundColor(Color.red)
                        Text("rfdfd")
                    }
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.8))
        .frame(width: 200, height: UIScreen.main.bounds.height)
        .shadow(radius: 10)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}

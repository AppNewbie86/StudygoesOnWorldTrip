//
//  NavigationBar.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        VStack(spacing: 60) {
            ForEach(0..<4, id: \.self) { item in
                Button(action: {
                    // Do something here
                }) {
                    VStack {
                        Image(systemName: "person.crop.circle")
                            .imageScale(.small)
                            .foregroundColor(Color.gray)
                        Text("Profil")
                            .foregroundColor(Color.orange)

                    }
                }
            }
        }
        .padding()
        .background(Color.pink.opacity(0.8))
        .frame(width: 250, height: UIScreen.main.bounds.height)
        .shadow(radius: 10)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}

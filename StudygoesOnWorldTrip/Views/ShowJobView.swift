//
//  ShowJobView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 16.02.23.
//

import SwiftUI

struct ShowJobView: View {
    let theDescription2: String
    let imageName2: String
    let jobURL: String
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                ScrollView {
                    Text(.init(theDescription2))
                        .padding()
                }
                
                Spacer()
                
                Link(
                    destination: URL(string: jobURL)!,
                    label: {
                        ZStack {
                            Image( imageName2)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .scaleEffect(0.8)
                            
                            
                        }
                    })
                
            }
        }
    }
}

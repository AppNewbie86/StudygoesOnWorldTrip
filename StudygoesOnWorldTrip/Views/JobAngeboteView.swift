//
//  JobAngeboteView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 16.02.23.
//

import SwiftUI

struct JobAngeboteView: View {
    
    let theDescription2: String
    
    
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
                
                
                
            }
        }
    }
}


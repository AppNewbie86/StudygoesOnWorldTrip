//
//  JobListView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 16.02.23.
//

import SwiftUI

struct ListItemView2: View {
    let name: String
    let jobImage2: String
    
    let imageDim: CGFloat = 70
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .foregroundColor(.orange)
                
            }.padding()
                            
            Spacer()
            
            Image(jobImage2)
                .resizable()
                .frame(width: imageDim, height: imageDim)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 1)
                )
                .shadow(color: .white.opacity(0.7), radius: 10, x: 0, y: 0)
        }
        .padding(.horizontal)
            .background(Color.black.cornerRadius(10))
            
    }
}

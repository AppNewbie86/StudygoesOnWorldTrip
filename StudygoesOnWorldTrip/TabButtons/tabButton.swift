//
//  tabButton.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 22.02.23.
//

import Foundation
import SwiftUI

// Tab Buttons...

struct tabButton : View {
    
    var title: String
    
    @Binding var tab : String
    
    var body: some View {
        
        Button(action: {tab = title}){
            
            VStack(spacing: 5){
                Image(systemName: title == "Home" ? "house.fill" : title == "Flights" ? "airplane" : title == "Boats" ? "oar.2.crossed" : "person.crop.circle.fill")
                    .renderingMode(.template)
                    .foregroundColor(tab == title ? .orange : .white)
                Text(title)
                    .foregroundColor(tab == title ? .orange : .white)
            }
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(Color("Color").opacity(tab == title ? 1 : 0))
            .clipShape(Capsule())
        }
    }
}

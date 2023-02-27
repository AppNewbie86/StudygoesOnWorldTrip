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
    
    // Titel des Buttons
    var title: String
    
    // Binding für die aktuelle Tab-Auswahl
    @Binding var tab : String
    
    // Darstellung der SwiftUI-Ansicht
    var body: some View {
        
        // Erstellen eines Buttons mit dem ausgewählten Titel
        Button(action: {tab = title}) {
            
            // VStack zur Anordnung des Symbols und Textes des Buttons
            VStack(spacing: 5){
                
                // Anzeigen des passenden Symbols für den Button-Titel
                Image(systemName: title == "Home" ? "house.fill" : title == "Flights" ? "airplane" : title == "Boats" ? "oar.2.crossed" : "person.crop.circle.fill")
                    .renderingMode(.template)
                    .foregroundColor(tab == title ? .orange : .white)
                
                // Anzeigen des Titels des Buttons
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

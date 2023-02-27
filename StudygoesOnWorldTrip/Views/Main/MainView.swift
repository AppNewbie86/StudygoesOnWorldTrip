//
//  MainView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 22.02.23.
//
import SwiftUI

// Creating Main View ...

struct MainView: View {
    
    // Erstellen von States für die aktuelle Tab-Auswahl, für die Animation des Übergangs zwischen den Ansichten, für die Anzeige des DetailViews und für das ausgewählte Model
    @State var tab = "House"
    @Namespace var animation
    @Binding var show : Bool
    @State var selected : Model = data[0]
    // Darstellung der SwiftUI-Ansicht
    var body: some View {
        
        ZStack {
            
            // VStack zur Anordnung der Ansichtselemente in einer vertikalen Richtung
            VStack(spacing: 0){
                
                // Wechseln der Ansichten auf Grundlage der Tab-Auswahl
                switch(tab) {
                    
                case "House" : HomeView(animation: animation, show: $show, selected: $selected)
                case "Plane" : PlaneView(viewModel: FlightSearchViewModel())
                case "Job" : JobView(viewModel: JobListViewModel())
                default: ProfilView()
                    
                }
                
                Spacer()
                
                // HStack zur Anordnung der Tab-Buttons in einer horizontalen Richtung
                HStack(spacing: 0){
                    
                    // Tab-Button für "House"
                    tabButton(title: "House", tab: $tab)
                    
                    Spacer(minLength: 0)
                    
                    // Tab-Button für "Plane"
                    tabButton(title: "Plane", tab: $tab)
                    
                    Spacer(minLength: 0)
                    
                    // Tab-Button für "Job"
                    tabButton(title: "Job", tab: $tab)
                    
                    Spacer(minLength: 0)
                    
                    // Tab-Button für "Profil"
                    tabButton(title: "Profil", tab: $tab)
                    
                    Spacer(minLength: 0)
                }
                .padding(.top)
                
                // Hinzufügen von Padding und Hintergrundfarbe zur Tab-Leiste
                .padding(.horizontal)
                .background(Utils.color)
                .clipShape(RoundedShape(corners: [.topLeft,.topRight]))
                
                // ScrollView for a smaller Smartphones
                
                if UIScreen.main.bounds.height < 750{
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        BottomView()
                    }
                }
                else {
                    BottomView()
                }
                
            }
            
            // Anzeigen des DetailViews bei Bedarf
            if show {
                DetailView(selected: $selected, show: $show, animation: animation)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color("bg").edgesIgnoringSafeArea(.all))
        
    }
}



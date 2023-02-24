//
//  MainView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 22.02.23.
//

import SwiftUI

// Creating Main View ...

struct MainView: View {
    
    @State var tab = "House"
    @Namespace var animation
    @State var show = false
    @State var selected : Model = data[0]
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 0){
                
                // Changing Views Based On Tab...
                
                switch(tab) {
                    
                case "House" : HomeView(animation: animation, show: $show, selected: $selected)
                case "Plane" : PlaneView()
                case "Job" : JobView(viewModel: JobListViewModel())
                default: ProfilView()
                    
                }
                
                Spacer()
                
                HStack(spacing: 0){
                    
                    tabButton(title: "House", tab: $tab)
                    
                    Spacer(minLength: 0)
                    tabButton(title: "Plane", tab: $tab)
                    
                    Spacer(minLength: 0)
                    tabButton(title: "Job", tab: $tab)
                    
                    Spacer(minLength: 0)
                    tabButton(title: "Profil", tab: $tab)
                    
                    Spacer(minLength: 0)
                }
                .padding(.top)
                
                
                .padding(.horizontal)
                .background(Utils.color)
                .clipShape(RoundedShape(corners: [.topLeft,.topRight]))
                
            }
            
            if show {
                DetailView(selected: $selected, show: $show, animation: animation)
            }
            
            
        }
    }
}

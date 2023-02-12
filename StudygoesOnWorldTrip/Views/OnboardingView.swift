//
//  OnboardingView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//


import SwiftUI

struct OnboardingView: View {
    var body: some View {
        Group {
            Color.blue.opacity(0.1)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabView {
                Text("Abflug")
                    .tabItem {
                        Image(systemName: "airplane.departure")
                        Text("Abflug")
                    }
                
                Text("Der Flug")
                    .tabItem {
                        Image(systemName: "airplane")
                        Text("Flug")
                    }
                
                Text("Die Landung")
                    .tabItem {
                        Image(systemName: "airplane.arrival")
                        Text("Landung")
                    }
                
            }
        }
    }
    struct OnBoardingView_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingView()
        }
    }
    
}

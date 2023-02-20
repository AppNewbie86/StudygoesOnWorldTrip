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
            TabView {
                Image("pic1")
                    .resizable()
                    .tabItem {
                        Image(systemName: "airplane.departure")

                        Text("Abflug")
                            .foregroundColor(Color.orange)

                    }
                
                Image("flyregeln")
                    .resizable()
                    .tabItem {
                        Image(systemName: "airplane")
                            .foregroundColor(Color.orange)

                        Text("Flug")
                    }
                
                Image("flughafen")
                    .resizable()
                    .tabItem {
                        Image(systemName: "airplane.arrival")
                            .foregroundColor(Color.orange)

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

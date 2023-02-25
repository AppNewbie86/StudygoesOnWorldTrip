//
//  FlightProgressView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 25.02.23.
//


import Foundation
import SwiftUI


struct FlightProgressView: View {
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        VStack {
            Image("worldmap")
                .resizable()
                .padding()
                .rotationEffect(.degrees(rotationAngle))
                .animation(Animation.linear(duration: 40).repeatForever(autoreverses: false))
                .onAppear {
                    rotationAngle = 360
                }
            HStack {
                Image("flugzeug")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .rotationEffect(.degrees(rotationAngle))
                Image("flugzeug")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .rotationEffect(.degrees(rotationAngle + 120))
                Image("flugzeug")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .rotationEffect(.degrees(rotationAngle + 240))
            }
            .rotationEffect(.degrees(-rotationAngle))
            .animation(Animation.linear(duration: 60).repeatForever(autoreverses: false))
        }
    }
}

//
//  BookingProcessTabView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//


import SwiftUI

struct BookingProcessTabView: View {
    var body: some View {
        VStack {
            Text("Get inspiration \n for your next trip")
            TabView {
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(0..<5) { _ in
                            Image("second")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .cornerRadius(20)
                        }
                    }
                    .padding()
                }
                .tabItem {
                    Text("Tab 1")
                }
                .tag(0)
                
                VStack(spacing: 20) {
                    Text("Find best place for \n your journey")
                    ScrollView(.horizontal){
                        HStack(spacing: 20) {
                            ForEach(0..<1) { _ in
                                Image("wandern")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(20)
                                
                                Image("dream")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(20)
                                
                                Image("finn")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(20)
                            }
                        }
                    }
                    ScrollView(.horizontal){
                        HStack(spacing: 20) {
                            ForEach(0..<1) { _ in
                                Image("entspannung")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(20)
                                
                                Image("scoutland")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(20)
                                
                                Image("worldtrip")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(20)
                                
                                Image("berg")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(20)
                            }
                        }
                    }
                    Text("We’re happy to share \n our best tips for destinations where \n you can relax. But you find the nicest city \n trips as well!")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .bold()
                    
                }
                .padding()
                .tabItem {
                    Text("Tab 2")
                }
                .tag(1)
            }
        }
    }
}
struct BookingProcessTabView_Previews: PreviewProvider {
    static var previews: some View {
        BookingProcessTabView()
    }
}

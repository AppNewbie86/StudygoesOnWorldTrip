//
//  WelcomeView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var showNextView = false
    
    
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Color.blue.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Study goes on Worldtrip")
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.system(size: 34))
                    .foregroundColor(.white)
                VStack {
                    Spacer()
                    Image("logoneu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    self.showNextView = true
                }) {
                    Text("Los gehts ...")
                }.padding(10)
                    .foregroundColor(Color.white)
                    .font(.system(size: 24))
                    .frame(width: 180, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
                    .sheet(isPresented: $showNextView) {
                        TwoWayView()
                    }
            }
        }
    }
    struct WelcomeView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
        }
    }
}

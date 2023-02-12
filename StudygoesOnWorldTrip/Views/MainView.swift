//
//  MainView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct MainView: View {
    @State var text: String = ""
    @State private var showNavbar = false
    
    @State private var showBookingProcessTab = false

    
    var body: some View {
        ZStack {
            
            Image("roma")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 650)
                .position(x:196,y:250)
            
            if showNavbar {
                NavigationBar()
                    .transition(.move(edge: .leading))
                    .position(x:20,y:150)
            }
            
            VStack {
                
                Text("Roma")
                    .foregroundColor(Color.white)
                    .font(.system(size: 44))
                
                HStack {
                    Spacer()
                    SearchBar(text: $text)
                        .position(x:250, y:30)

                }
                .padding(20)
                Text("Was erwartet euch in Italien")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .bold()
                    .font(.system(size: 22))
                    .position(x:220, y:20)

                Text("Erkunden Sie die schönen Seiten Italiens \n und schauen sie sich Land und Leute genauer an ")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 18))
                    .position(x:180, y:0)

                    .font(.subheadline)
                    .padding()
                
                Spacer()
                    Text("Beliebte Ziele")
                        .foregroundColor(Color.white)
                        .bold()
                        .frame(width: 250, height: 50)
                        .background(Color.green)
                        .cornerRadius(20)
                        .position(x:80, y:60)

                Spacer()

                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        // Horizontale Liste aus Bildern
                        Image("spain")
                            .resizable()
                            .frame(width: 200, height: 220)
                        
                        Image("tailand")
                            .resizable()
                            .frame(width: 200, height: 220)
                        
                        Image("greece")
                            .resizable()
                            .frame(width: 200, height: 220)
                            .padding(0)
                    }
                }.padding(-35)
                
            }
            HStack {
                Button(action: {
                    self.showNavbar.toggle()
                }) {
                    Image(systemName: "list.bullet")
                        .imageScale(.large)
                }
                .padding()
                .position(x:350,y:20)
                .foregroundColor(Color.white)
            }
            HStack {
                Button(action: {
                    self.showBookingProcessTab.toggle()
                })
                {
                    Image(systemName: "book")
                        .imageScale(.large)
                        

                    Text("Buchen")
                        
                    
                }
                .padding()
                .position(x:196,y:470)
                .foregroundColor(Color.white)

                .cornerRadius(20)
            }
            
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

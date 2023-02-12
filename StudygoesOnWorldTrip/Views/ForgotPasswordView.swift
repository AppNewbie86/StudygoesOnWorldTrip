//
//  ForgotView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//


import SwiftUI

struct ForgotPasswordView: View {
    
    @State var email: String = ""
    
    @State private var showNextView40 = false

    
    var body: some View {
        
        VStack {
            ZStack {

                Image("black")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.9)
                    .overlay(alignment:
                            .bottomTrailing, content: { // toptrailing setzt es an den oberen Rand
                            })
                
                Text("Forgot your Password")
                    .font(.system(size:30)) // macht text kleiner
                    .foregroundColor(Color.yellow)
                    .position(x:200, y:50)
                VStack {
       
                    Image("lostpasswort")
                        .resizable()
                        .frame(width:350,height: 350)
                        .opacity(0.9)
                        .overlay(alignment:
                                .bottomTrailing, content: { // toptrailing setzt es an den oberen Rand
                                })
                    
                    Text("Enter your email below to receive your \n password reset instructions")
                        .foregroundColor(Color.white)
                    
                    ZStack {
                        TextField("Your email ", text: $email)
                            .padding()
                            .cornerRadius(5.0)
                            .shadow(radius: 5.0)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        
                    }
                    
                    
                    Button(action: {
                        self.showNextView40 = true
                    }) {
                        Text("send")
                    }
                    .sheet(isPresented: $showNextView40) {
                        ForgetPasswordInfoView()
                    }
                    
                    
                }
            }
            
            
        }
        
            
    }
}
    

struct ForgotView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}

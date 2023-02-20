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
                    .foregroundColor(Color.orange)
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
                        TextField("Email", text: $email)
                            .textFieldStyle(PlainTextFieldStyle())
                            .frame(width:350)

                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                        
                        
                        
                    }
                    
                    
                    Button(action: {
                        self.showNextView40 = true
                    }) {
                        Text("send")
                            .foregroundColor(Color.orange)
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

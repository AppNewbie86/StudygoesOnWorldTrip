//
//  LoginView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 23.02.23.
//

import SwiftUI

struct LoginView: View {
    
   // var animation: Namespace.ID
   // @Binding var show: Bool
  //  @Binding var selected: Model
    
    
    var body: some View {
        NavigationView {
            LoginContentView()
                .navigationTitle("")
                .navigationBarHidden(true)
        }
    }
}


struct LoginContentView: View {
    var body: some View {
        ZStack {
            Image("loginground")
                .resizable()
                .ignoresSafeArea()
            Image("hill")
                .resizable()
                .frame(maxWidth: .infinity)
                .position(x:195,y:450)

            VStack {
                Spacer()
                
                LogoView()
                
                Spacer()
                
                FormField(image: "envelope", placeholder: "example@email.com", isSecure: false)
                
                FormField(image: "lock", placeholder: "password", isSecure: true)
                    .padding(.top)

            
                NavigationLink(destination: MainView()) {
                    Text("Login")
                        .font(.system(size: 21, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: 300)
                        .frame(height: 60)
                        .background(Color.orange)
                        .cornerRadius(8)
                        .padding(.top)
                }
                
                
                HStack(spacing: 15) {
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(height: 60)
                            .foregroundColor(.white)
                            .overlay(
                                HStack {
                                    Image("facebook")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 0.2505864799, green: 0.224209547, blue: 0.5444943309, alpha: 1)))
                                    
                                    Text("Sign Up")
                                        .font(.system(size: 21, weight: .bold))
                                        .foregroundColor(.black)
                                        .padding(.leading, 8)
                                }
                            )
                            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.0, y: 0.0)
                    })
                    
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(height: 60)
                            .foregroundColor(.white)
                            .overlay(
                                HStack {
                                    Image("google")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                    
                                    Text("Sign Up")
                                        .font(.system(size: 21, weight: .bold))
                                        .foregroundColor(.black)
                                        .padding(.leading, 8)
                                }
                            )
                            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.0, y: 0.0)
                    })
                }
                .padding(.top)
                
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: ForgotPasswordView()) {
                        Text("Forgot Password")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.top)
                    }
                }
                .padding(.top)
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}


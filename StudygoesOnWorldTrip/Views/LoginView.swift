//
//  LoginView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var passwordError = false
    
    @State private var showForgotPasswordView = false

    
    var body: some View {
        VStack(spacing: 20) {
            Text("Anmelden")
                .font(.largeTitle)
            
            TextField("E-Mail-Adresse", text: $email)
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
            
            SecureField("Passwort", text: $password)
                .padding()
                .background(passwordError ? Color.red.opacity(0.2) : Color.gray)
                .cornerRadius(10)
                .overlay(passwordError ? Text("Passwort muss mindestens 8 Zeichen lang sein").foregroundColor(.red) : nil)
            
            HStack {
                Button(action: {
                    self.showForgotPasswordView = true
                }) {
                    Text("Password vergessen")
                    
                }.padding()
                    .foregroundColor(Color.blue)
                    .font(.system(size: 14))
                
                    .sheet(isPresented: $showForgotPasswordView) {
                        ForgotPasswordView()
                    }
                
                Spacer()
                
                Button(action: {
                    if self.password.count < 8 {
                        self.passwordError = true
                    } else {
                        self.passwordError = false
                        // Hier könnte eine Aktion für den "Registrieren"-Button eingefügt werden
                    }
                }) {
                    Text("Login")
                        .font(.body)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

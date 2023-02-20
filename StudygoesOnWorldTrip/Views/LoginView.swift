//
//  LoginView.swift
//  Firebaseauth
//
//  Created by Marcel Zimmermann on 17.02.23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @State private var email : String = ""
    
    @State private var password : String = ""

    var body: some View {
        ZStack {
            Image("willcomebild")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing: 20) {
                Text("Welcome")
                    .foregroundColor(Color.orange)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: -100)
                
                TextField("Email", text: $email)
                    .foregroundColor(Color.black)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.orange)
                
                SecureField("Password", text: $password)
                    .foregroundColor(Color.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.orange)
                
                Button {
                } label: {
                    Text("Sign Up")
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.linearGradient(colors: [.red, .orange], startPoint:
                                .top, endPoint: .bottomTrailing))
                      )
                }
                .padding(.top)
                .offset(y: 110)
                
                Button {
                    // login
                } label: {
                    Text("Already have an Account? Login")
                        .bold()
                        .foregroundColor(Color.white)
                }
                .padding(.top)
                .offset(y: 110)
            }
            .frame(width: 350)
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
                
            }
    }
}


func signUp(email : String , password : String){
    Auth.auth().createUser(withEmail: email, password: password){
        result, error in
        if let error = error{
            print("an error occured \(error)")
            return
        }
    }
}

func signIn(email : String , password : String){
    Auth.auth().signIn(withEmail: email, password: password){
        result, error in
        if let error = error{
            print("an error occured \(error)")
            return
        }
        
    }
}

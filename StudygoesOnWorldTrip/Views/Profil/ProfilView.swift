//
//  ProfilView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 22.02.23.
//

import SwiftUI

struct ProfilView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var city: String = ""
    @State private var country: String = ""
    
    @State private var isEditingImage: Bool = false
    
    var body: some View {
        VStack {
            Image(("profile_pic"))
                .padding(.top, 50)
                .padding(.bottom, 10)
                .onTapGesture {
                    self.isEditingImage = true
                }
            
            Text("Profil")
                .font(.system(size:24))
                .foregroundColor(.orange)

            
            VStack(alignment: .leading, spacing: 10) {
                TextField("Vorname", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Nachname", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Stadt", text: $city)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Land", text: $country)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal, 40)
            
            Spacer()
            
            Button(action: {
                // Aktion, um das Profil zu speichern
            }, label: {
                Text("Speichern")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.orange)
                    .cornerRadius(10)
            })
            .padding(.bottom, 50)
        }
        .sheet(isPresented: $isEditingImage) {
            // Aktion, um das Profilbild zu ändern
        }
    }
}

struct CircleImage: View {
    var image: UIImage
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

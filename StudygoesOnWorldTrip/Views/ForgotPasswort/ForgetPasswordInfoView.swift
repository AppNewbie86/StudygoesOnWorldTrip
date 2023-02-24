//
//  ForgetPasswordInfoView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 23.02.23.
//

import SwiftUI

struct ForgetPasswordInfoView: View {
    
    @Environment(\.presentationMode) var presentationMode

    @State private var reiseInfo = ""
    @State private var reiseInfos = ""

    @State private var newReiseInfos = ""


    
    var body: some View {
        VStack {
            Text("Info")
                .font(.system(size: 30))
                .foregroundColor(Color.orange)
                .padding()

            Text("Sie erhalten in Kürze eine Email \n folgen Sie bitte den Anweisungen")
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .padding()

            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("OK")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(10)
            .padding()
        }
        .background(Color.gray)
        .frame(width: 200, height: 300)
        .cornerRadius(50)
    }
}

struct ForgetPasswordInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordInfoView()
    }
}

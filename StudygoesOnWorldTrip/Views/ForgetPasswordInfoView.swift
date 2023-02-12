//
//  ForgetPasswordInfoView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct ForgetPasswordInfoView: View {
    
    @State private var reiseInfo = ""
    @State private var reiseInfos = ""

    @State private var newReiseInfos = ""


    
    var body: some View {
        VStack {
            Text("Passwortinfos")
                .font(.system(size: 30))
                .foregroundColor(Color.orange)
            Text("Info View.")
                .padding()
                .lineLimit(nil)
            
          
                Text("Sie erhalten in Kürze eine Email folgen Sie bitte den Anweisungen")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
            
        }
    }
}




struct ForgetPasswordInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordInfoView()
    }
}

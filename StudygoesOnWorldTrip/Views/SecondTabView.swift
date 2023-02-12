//
//  SecondTabView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct SecondTabView: View {
    var body: some View {
        VStack {
            Image("firstTabImage")
            Text("Willkommen auf dem ersten Tab")
                .padding()
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}

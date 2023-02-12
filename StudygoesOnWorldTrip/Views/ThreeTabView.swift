//
//  ThreeTabView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI

struct ThreeTabView: View {
    var body: some View {
        VStack {
            Image("firstTabImage")
            Text("Willkommen auf dem ersten Tab")
                .padding()
        }
    }
}

struct ThreeTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeTabView()
    }
}

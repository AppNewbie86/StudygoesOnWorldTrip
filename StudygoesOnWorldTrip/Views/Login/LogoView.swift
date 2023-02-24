//
//  LogoView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 23.02.23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 0) {
                    LogoShape(offset: 0.8)
                        .foregroundColor(Color.orange)
                        .frame(width: geometry.size.width)
                    
                    LogoShape(offset: 0.7)
                        .foregroundColor(Color.orange)
                        .frame(width: geometry.size.width * 0.7)
                    
                    LogoShape(offset: 0.4)
                        .foregroundColor(Color.orange)
                        .frame(width: geometry.size.width * 0.4)
                }
            }
            .frame(width: 90, height: 90)
            .rotationEffect(.degrees(-35))
            
            Text("FLIGHT")
                .font(.system(size: 21, weight: .bold))
                .padding(.top, 30)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}

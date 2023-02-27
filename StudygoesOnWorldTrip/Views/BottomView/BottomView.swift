//
//  BottomView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 27.02.23.
//

import SwiftUI

struct BottomView: View {
    
    @State var index = 1
    
    var body: some View {
        Text("People")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color("txt"))
        
        Text("Member Of Your Group")
            .font(.caption)
        
        HStack(spacing: 15){
            
            ForEach(1...6,id: \.self){i in
                
                Button(action: {index = i}) {
                    Text("\(i)")
                        .fontWeight(.bold)
                        .foregroundColor(index == i ? .white : .gray)
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(Color("Color").opacity(index == i ? 1:
                                                            0.07))
                        .cornerRadius(4)
                }
            }
            
            Spacer(minLength: 0)
            
        }
        .padding(.top)
        
        Text("Description")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color("txt"))
            .padding(.top,10)
        
        Text("The Caribean is a region of the America that consists of the Caribbean Sea, its islands and the surrounding coasts")
            .multilineTextAlignment(.leading)
        
        Spacer(minLength: 0)
        
        HStack {
            Spacer(minLength: 0)
            Button(action: {}){
                Text("Book Now")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .background(Color("Color"))
                    .clipShape(Capsule())
            }
            Spacer(minLength: 0)

        }
        .padding(.top)
        // since all edges are ignored...
        .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
    
    }
        
}

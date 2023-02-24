//
//  DetailView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 22.02.23.
//

import SwiftUI

// DetailView

struct DetailView: View {
    
    @Binding var selected : Model
    
    @Binding var show : Bool
    
    var animation : Namespace.ID
    
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                    
                    Image(selected.img)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height:150)
                        .clipShape(RoundedShape(corners: [.bottomLeft,.bottomRight]))
                        .matchedGeometryEffect(id: selected.img, in: animation)
                    
                    HStack {
                        
                        Button(action: {
                            
                            withAnimation(.spring()){show.toggle()}
                        }){
                            
                            Image(systemName: "chevron.left")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .clipShape(Circle())
                        }
                        
                        Spacer()
                        
                        Button(action: {}){
                            
                            Image(systemName: "suit.heart")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .clipShape(Circle())
                        }
                        .padding()
                        
                    }
                }
            }
            Spacer(minLength: 0)
                .background(Color.gray)
        }
        
        
    }
    
}

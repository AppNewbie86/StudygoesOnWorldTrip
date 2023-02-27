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
                        .frame(height:330)//150
                        .clipShape(RoundedShape(corners: [.bottomLeft,.bottomRight]))
                        .matchedGeometryEffect(id: selected.img, in: animation)
                    
                    
                    HStack {
                        
                        Button(action: {
                            
                            withAnimation(.spring()){show.toggle()}
                        }){
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .clipShape(Circle())
                        }
                        
                        Spacer()
                        
                        Button(action: {}){
                            
                            Image(systemName: "suit.heart")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .clipShape(Circle())
                        }
                        .padding()
                        
                    }
                    .padding()
                    .padding(.top,UIApplication.shared.windows.first?
                        .safeAreaInsets.top)
                }
                
                
                HStack(alignment: .top){
                    VStack(alignment: .leading,spacing: 12){
                        Text(selected.title)
                            .font(.title)
                            .foregroundColor(Color("txt"))
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: selected.title, in: animation)
                        
                        HStack(spacing: 10){
                            
                            Image("map")
                            
                            Text(selected.country)
                                .foregroundColor(.black)
                                .matchedGeometryEffect(id: selected.country, in: animation)

                            
                            HStack(spacing: 5){
                                
                                Text(selected.ratings)
                                    .foregroundColor(.black)

                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                
                                
                            }
                            
                        }
                    }
                    
                    Spacer(minLength: 0)
                    
                    Text(selected.price)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("txt"))
                    
                }
                .padding()
                .padding(.bottom)

            }
            .background(Color.white)
            .clipShape(RoundedShape(corners: [.bottomLeft,.bottomRight]))
            
            Spacer(minLength: 0)
                    
        }
        .background(Color.gray)
            
    }
        
}


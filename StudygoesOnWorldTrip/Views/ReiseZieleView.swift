//
//  ReiseZieleView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 12.02.23.
//

import SwiftUI

struct ReiseZieleView: View {
    @StateObject var reiseViewModel: ReiseZieleViewModel = ReiseZieleViewModel()
    
    var body: some View {
        NavigationView {
            List(self.reiseViewModel.reiseZieleModels) { item in
                NavigationLink(destination: {
                    ShowReiseZieleView(
                        theDescription: item.description,
                        imageName: item.reiseImage,
                        reiseURL: item.reiseURL)
                        
                }, label: {
                    ListItemView(
                        name: item.name,
                        hotelStars: item.hotelStars,
                        reiseImage: item.reiseImage)
                })
            }.navigationTitle("Top Reisen")
        }
        
    }
}

struct ReiseZieleView_Previews: PreviewProvider {
    static var previews: some View {
        ReiseZieleView()
    }
}

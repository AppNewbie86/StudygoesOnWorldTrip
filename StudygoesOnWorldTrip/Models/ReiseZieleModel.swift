//
//  ReiseZieleModel.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 12.02.23.
//

import Foundation

struct ReiseZieleModel: Identifiable {
    let id = UUID()
    let name: String
    let hotelStars: Int
    let description: String
    let reiseImage: String
    let reiseURL: String
}

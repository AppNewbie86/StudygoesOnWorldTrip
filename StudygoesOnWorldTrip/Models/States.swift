//
//  States.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 12.02.23.
//

import Foundation

struct States : Identifiable, Hashable {
    var id = UUID()
    var name : String
    var searchText : String
}

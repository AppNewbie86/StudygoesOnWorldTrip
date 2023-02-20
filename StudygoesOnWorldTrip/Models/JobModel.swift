//
//  JobModel.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 16.02.23.
//

import Foundation

struct JobModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let description2: String
    let jobImage2: String
    let jobURL: String
}

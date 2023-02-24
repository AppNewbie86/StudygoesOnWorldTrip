//
//  OriginalFlightEndPoint.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 24.02.23.
//

import Foundation
import SwiftUI

struct OriginalFlightEndPoint : Identifiable, Decodable {
    
    let id = UUID()
    var description : String
    var iataCode : String
    var terminal : String
}

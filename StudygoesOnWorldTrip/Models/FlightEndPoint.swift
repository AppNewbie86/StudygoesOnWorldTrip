//
//  FlightEndPoint.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 24.02.23.
//

import Foundation
import SwiftUI

struct FlightEndPoint : Identifiable, Decodable {
    
    let id = UUID()
    var description : String
    var iataCode : String
    var terminal : String
    var at : String

}

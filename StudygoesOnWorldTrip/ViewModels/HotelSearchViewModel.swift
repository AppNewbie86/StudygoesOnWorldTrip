//
//  HotelSearchViewModel.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 25.02.23.
//
//import Foundation
//import SwiftUI
//import Combine
//import Amadeus
//
//class HotelSearchViewModel: ObservableObject {
//    
//    private let amadeus = Amadeus(
//        client_id: "YOUR_CLIENT_ID",
//        client_secret: "YOUR_CLIENT_SECRET"
//    )
//    
//    @Published var hotelOffers = [HotelOffer]()
//    
//    func fetchHotelOffers(cityCode: String, checkInDate: String, checkOutDate: String, adults: Int, roomQuantity: Int, completion: @escaping () -> Void) {
//        
//        let params = ["cityCode": cityCode,
//                      "checkInDate": checkInDate,
//                      "checkOutDate": checkOutDate,
//                      "adults": String(adults),
//                      "roomQuantity": String(roomQuantity),
//                      "currency": "EUR"]
//        
//        amadeus.shopping.hotelOffers.get(params: params) { result in
//            switch result {
//            case .success(let response):
//                DispatchQueue.main.async {
//                    let jsonDecoder = JSONDecoder()
//                    do {
//                        let jsonData = try JSONSerialization.data(withJSONObject: response.data, options: [])
//                        let decodedData = try jsonDecoder.decode([HotelOffer].self, from: jsonData)
//                        self.hotelOffers = decodedData
//                    } catch let error {
//                        print("Error decoding hotel offers: \(error)")
//                    }
//                    completion()
//                }
//            case .failure(let error):
//                print("Error fetching hotel offers: \(error)")
//                completion()
//            }
//        }
//    }
//}
//struct HotelOffer: Codable, Identifiable {
//    let id = UUID()
//    let hotel: Hotel
//    let offers: [Offer]
//}
//
//struct Hotel: Codable {
//    let type: String
//    let hotelId: String
//    let chainCode: String
//    let dupeId: String
//    let name: String
//    let cityCode: String
//    let latitude: Double
//    let longitude: Double
//}
//
//struct Offer: Codable {
//    let id: String
//    let checkInDate: String
//    let checkOutDate: String
//    let room: Room
//    let guests: Guests
//    let price: Price
//    
//    struct Room: Codable {
//        let type: String
//        let typeEstimated: RoomTypeEstimated
//        let description: Description
//    }
//    
//    struct RoomTypeEstimated: Codable {
//        let category: String
//        let beds: Int
//        let bedType: String
//    }
//    
//    struct Description: Codable {
//        let text: String
//        let lang: String
//    }
//    
//    struct Guests: Codable {
//        let adults: Int
//    }
//    
//    
//    struct Variations: Codable {
//        let average: Average
//        let changes: [Change]
//    }
//    
//    struct Average: Codable {
//        let base: String
//    }
//    
//    struct Change: Codable {
//        let startDate: String
//        let endDate: String
//        let total: String
//    }
//    
//    struct Policies: Codable {
//        let paymentType: String
//        let cancellation: Cancellation
//    }
//    
//    struct Cancellation: Codable {
//        let description: Description
//        let type: String
//    }
//}

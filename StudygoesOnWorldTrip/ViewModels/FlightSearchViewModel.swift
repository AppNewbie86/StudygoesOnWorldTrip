import SwiftUI
import Combine
import Amadeus
import Foundation

class FlightSearchViewModel: ObservableObject {
    
    private let amadeus = Amadeus(
        client_id: "g4gunmgnvuKLaySpLoAu4OdCHoZnImAe",
        client_secret: "PQmHmLkPycz5ohBH"
    )
    
    @Published var flightDestinations = [FlightDestination]()
    
    func fetchFlightDestinations(completion: @escaping () -> Void) {
        amadeus.shopping.flightDestinations.get(params: ["origin": "MAD", "oneWay": "false", "nonStop": "false"]) { result in
            switch result {
            case .success(let response):
                DispatchQueue.main.async {
                    let jsonDecoder = JSONDecoder()
                    do {
                        let jsonData = try JSONSerialization.data(withJSONObject: response.data.rawValue, options: [])
                        let decodedData = try jsonDecoder.decode([FlightDestination].self, from: jsonData)
                        self.flightDestinations = decodedData
                    } catch let error {
                        print("Error decoding flight destinations: \(error)")
                    }
                    completion()
                }
            case .failure(let error):
                print("Error fetching flight destinations: \(error)")
                completion()
            }
        }
    }
}

struct FlightDestination: Decodable, Identifiable {
    let id = UUID().uuidString
    let type: String
    let subType: String
    let name: String
    let detailedName: String
    let destination: String
    let analytics: Analytics
}

struct Analytics: Decodable {
    let flights: Flights
}

struct Flights: Decodable {
    let score: Double
    let travelers: [String: Double]

    private enum CodingKeys: String, CodingKey {
        case score
        case travelers = "travelers_distribution"
    }
}

struct Travelers: Decodable {
    let onePointZero: Double
}

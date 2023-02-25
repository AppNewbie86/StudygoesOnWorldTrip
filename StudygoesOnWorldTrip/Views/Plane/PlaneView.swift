import SwiftUI
import Combine
import Amadeus
import Foundation

import SwiftUI

struct PlaneView: View {
    @StateObject var viewModel = FlightSearchViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Button("Fetch Flight Destinations") {
                    viewModel.fetchFlightDestinations {}
                }
                List(viewModel.flightDestinations) { destination in
                    VStack(alignment: .leading) {
                        Text(destination.destination)
                            .font(.headline)
                        Text("From: \(destination.origin)")
                        Text("Departure Date: \(destination.departureDate)")
                        Text("Return Date: \(destination.returnDate)")
                        Text("Price: \(destination.price.total)")
                    }
                }
            }
            .navigationTitle("Flight Destinations")
        }
    }
}

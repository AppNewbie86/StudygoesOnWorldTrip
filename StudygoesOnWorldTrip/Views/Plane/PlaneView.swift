

import SwiftUI

struct PlaneView: View {
    @StateObject var flightData = FlightData()
    
    var body: some View {
        List(flightData.flightOffers, id: \.id) { flight in
            Text("\(flight.price)")
        }
        .onAppear {
            flightData.loadData()
        }
    }
}

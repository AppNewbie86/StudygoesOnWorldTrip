


import SwiftUI
import Amadeus
import Foundation


struct HotelSearchView: View {
    
    @State private var destination: String = ""
    @State private var checkInDate: Date = Date()
    @State private var checkOutDate: Date = Date()
    @State private var numberOfGuests: Int = 1
    
    var body: some View {
        NavigationView {
            
            VStack {
                Image("moosgreen")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Form {
                        Section(header: Text("Destination")) {
                            TextField("Where are you going?", text: $destination)
                        }
                        
                        Section(header: Text("Dates")) {
                            DatePicker("Check-In", selection: $checkInDate, displayedComponents: .date)
                            DatePicker("Check-Out", selection: $checkOutDate, displayedComponents: .date)
                        }
                        
                        Section(header: Text("Guests")) {
                            Stepper("Number of Guests: \(numberOfGuests)", value: $numberOfGuests, in: 1...10)
                        }
                        
                        Section {
                            Button(action: {
                                // Search for hotels
                            }) {
                                Text("Search")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.orange)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .navigationBarTitle("Find a Hotel")
                }
            }
        }
    }
}

import SwiftUI
import Combine

//struct HotelSearchView: View {
//    
//    @ObservedObject var viewModel: HotelSearchViewModel
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                Button(action: {
//                    viewModel.searchHotels()
//                }) {
//                    Text("Search")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.orange)
//                        .cornerRadius(10)
//                }
//                
//                List(viewModel.hotels, id: \.self) { hotel in
//                    Text(hotel.name)
//                }
//                
//            }
//            .navigationBarTitle("Find a Hotel")
//        }
//    }
//}

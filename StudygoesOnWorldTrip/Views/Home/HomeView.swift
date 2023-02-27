import SwiftUI

// Creating the HomeView
struct HomeView: View {
    
    var animation: Namespace.ID
    @Binding var show: Bool
    @Binding var selected: Model
    
    var body: some View {
        
        ZStack {
            // Adding a background image that takes up half of the screen
            Image("dash")
                .resizable()
                
               
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    Spacer()
                    
                    Text("We focus a lot on helping\nthe first time or\ninexperienced traveler head out")
                        .font(.system(size:12))
                        .foregroundColor(Color.black)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}){
                        Image(systemName: "magnifyingglass.circle.fill")
                            .renderingMode(.template)
                            .foregroundColor(.black)
                            .padding()
                            .clipShape(Circle())
                    }
                }
                .padding()
                    
                    
                    HStack {
                        Text("Destinations")
                            .font(.system(size:24))
                            .foregroundColor(Color.black)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("See All")
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    
                    ForEach(data){travel in
                        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                            
                            Image("\(travel.img)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity)
                                .cornerRadius(10)
                                .matchedGeometryEffect(id: travel.img, in: animation)
                            
                            VStack(alignment: .trailing, spacing: 40) {
                                
                                Text(travel.title)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .matchedGeometryEffect(id: travel.title, in: animation)

                                
                                Text(travel.country)
                                    .padding(30)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .matchedGeometryEffect(id: travel.country, in: animation)

                                
                            }
                            .padding()
                            
                        }
                        .padding()
                        // setting detail Data...
                        .onTapGesture {
                            withAnimation(.spring()){
                                selected = travel
                                show.toggle()
                            }
                        }
                    }
                    
                }
                
            }.ignoresSafeArea()
        }
        
    }


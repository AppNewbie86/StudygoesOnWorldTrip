import SwiftUI
import Combine
import Amadeus
import Foundation

struct PlaneView: View {
    @StateObject var viewModel = FlightSearchViewModel()
    @State private var isLoadingData = false // neue State-Variable
    @State private var isButtonHighlighted = false // neue State-Variable für die Farbanimation des Buttons
    @State private var isBackgroundScaled = false // neue State-Variable für die Hintergrundanimation
    
    var body: some View {
        ZStack {
            // Hintergrundbild als Hintergrund-Layer einfügen und ihm einen niedrigeren Z-Index geben
            Image("flugzeugbahnen")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .scaleEffect(isBackgroundScaled ? 1.2 : 1.0) // skaliere das Hintergrundbild beim Highlighting
                .animation(.easeInOut(duration: 0.3)) // füge eine Animation hinzu, um das Highlighting des Hintergrundbildes zu animieren
                .edgesIgnoringSafeArea(.all)
                .zIndex(-1)
            
            VStack {
                if isLoadingData { // wenn Daten geladen werden, zeige FlightLoadingView
                    FlightProgressView()
                } else {
                    List(viewModel.flightDestinations) { flightDestination in
                        Text(flightDestination.name)
                    }
                }
                
                Button("Search Flights") {
                    isLoadingData = true // setze isLoadingData auf true, um das Laden anzuzeigen
                    viewModel.fetchFlightDestinations {
                        isLoadingData = false // setze isLoadingData auf false, wenn die Daten geladen sind
                    }
                }
                .foregroundColor(.white)
                .padding()
                .background(isButtonHighlighted ? Color.orange.opacity(0.8) : Color.orange)
                .cornerRadius(10)
                .shadow(radius: 5)
                .scaleEffect(isButtonHighlighted ? 1.1 : 1.0) // vergrößere den Button beim Highlighting
                .animation(.easeInOut(duration: 0.3)) // füge eine Animation hinzu, um das Highlighting zu animieren
                .onTapGesture {
                    isButtonHighlighted = true // setze isButtonHighlighted auf true, um das Highlighting auszulösen
                    isBackgroundScaled = true // setze isBackgroundScaled auf true, um das Highlighting des Hintergrundbildes auszulösen
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { // setze isButtonHighlighted und isBackgroundScaled nach 0.3 Sekunden zurück
                        isButtonHighlighted = false
                        isBackgroundScaled = false
                    }
                }
            }
            .onAppear {
                isLoadingData = true // setze isLoadingData auf true, wenn die View erscheint
                viewModel.fetchFlightDestinations {
                    isLoadingData = false // setze isLoadingData auf false, wenn die Daten geladen sind
                }
            }
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0) // füge einen Abstand am unteren Rand hinzu, der der Safe Area entspricht
        }
    }
}

import SwiftUI

struct LoginView: View {
    
    @Binding var selected : Model
    
    var body: some View {
        NavigationView {
            LoginContentView()
                .navigationTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct LoginContentView: View {
    
    // State Eigenschaft steuert die position von dem Berg Bild
    @State private var hillOffset = CGSize.zero
    
   // @State-Eigenschaft buttonOpacity verwendet wird, um die Deckkraft des Buttons zu steuern.
    @State private var buttonOpacity = 0.0
    
    
    // AnzeigeBereich
    var body: some View {
        ZStack {
            
            // BergBild mit animation
            Image("hill")
                .resizable()
                .frame(maxWidth: .infinity)
                .position(x:195,y: UIScreen.main.bounds.height + hillOffset.height) // Add the hillOffset to the y position
                .animation(.easeInOut(duration: 3)) // Add an animation to the hill image
                .onAppear {
                    // Set the hillOffset to a value that moves the hill from bottom to top
                    hillOffset = CGSize(width: 0, height: -UIScreen.main.bounds.height + 450)
                }
            
            
            
            VStack {
                Spacer()
                
                LogoView()
                
                Spacer()
                
                FormField(image: "envelope", placeholder: "example@email.com", isSecure: false)
                
                FormField(image: "lock", placeholder: "password", isSecure: true)
                    .padding(.top)
                
                // NavigationLink, um zur MainView zu navigieren, wenn der Benutzer erfolgreich angemeldet ist.
                NavigationLink(destination: MainView()) {
                    Text("Login")
                        .font(.system(size: 21, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: 300)
                        .frame(height: 60)
                        .background(Color.orange)
                        .cornerRadius(8)
                        .padding(.top)
                        .opacity(buttonOpacity) // Set the opacity of the button
                        .animation(.easeInOut(duration: 1)) // Add an animation to the opacity
                        .onAppear {
                            // Set the buttonOpacity to 1 to make it visible
                            buttonOpacity = 1.0
                        }
                }
                
                HStack(spacing: 15) {
                    // Facebook button ...
                    
                    // Google button ...
                }
                .padding(.top)
                
                HStack {
                    Spacer()
                    // Die Ansicht enthält auch einen Link zum Zurücksetzen des Passworts
                    NavigationLink(destination: ForgotPasswordView()) {
                        Text("Forgot Password")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.orange)
                            .frame(maxWidth: .infinity)
                            .padding(.top)
                    }
                }
                .padding(.top)
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea()
    }
}

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        NavigationView {
            LoginContentView()
                .navigationTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct LoginContentView: View {
    
    // State property to control the position of the hill image
    @State private var hillOffset = CGSize.zero
    
    // State property to control the opacity of the login button
    @State private var buttonOpacity = 0.0
    
    var body: some View {
        ZStack {
            // Background image and other views ...
            
            // Hill image with animation
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
                
                // Login button with animation
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
                    
                    NavigationLink(destination: ForgotPasswordView()) {
                        Text("Forgot Password")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.white)
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

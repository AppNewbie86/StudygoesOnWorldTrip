//
//  TwoWayView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//
import SwiftUI

struct TwoWayView: View {
    @State private var selectedOption = 1
    @State private var showOnboardingView = false
    @State private var showRegisterView = false

    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Image("dream")
                    .resizable()
                    .frame(width: 400, height: 400)

                
                VStack(spacing: 20) {
                    Text("Wähle eine Option aus:")
                        .font(.headline)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            self.selectedOption = 1
                            self.showOnboardingView = true
                        }) {
                            Text("Onboarding")
                                .font(.body)
                                .foregroundColor(selectedOption == 1 ? .white : .black)
                                .padding()
                                .background(selectedOption == 1 ? Color.blue : Color.gray)
                                .cornerRadius(10)
                            
                                .sheet(isPresented: $showOnboardingView) {
                                    OnboardingView()
                                }
                            
                            Button(action: {
                                self.selectedOption = 2
                                self.showRegisterView = true
                            }) {
                                Text("Register")
                                    .font(.body)
                                    .foregroundColor(selectedOption == 2 ? .white : .black)
                                    .padding()
                                    .background(selectedOption == 2 ? Color.blue : Color.gray)
                                    .cornerRadius(10)
                                
                                    .sheet(isPresented: $showRegisterView) {
                                        RegisterView()
                                    }
                            }
                        }
                    }
                }
            }
        }
    }
}

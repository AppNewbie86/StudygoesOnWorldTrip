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
    @State private var showLoginView = false
    @State private var showAllgemeineInfosView = false
    @State private var showCoronaInfos = false
    @State private var showDokumente = false


    
    var body: some View {
        ZStack {
            Image("flughafenhinter")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.6)

            
            VStack {
                Spacer()
                
                Text("Plan your next Trip")
                    .font(.system(size: 50))
                    .foregroundColor(.orange)

                
                
                
                VStack {
                    HStack {
                        Button(action: {
                            self.showOnboardingView = true
                        }) {
                            Text("App Konzept")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .padding()
                                .opacity(0.6)

                                .frame(width: 150, height: 150)
                                .background(Color.orange)
                                .cornerRadius(10)
                        }
                        .sheet(isPresented: $showOnboardingView) {
                            OnboardingView()
                        }
                        
                        Button(action: {
                            self.showLoginView = true
                        }) {
                            Text("Registrieren")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .padding()
                                .opacity(0.6)

                                .frame(width: 150, height: 150)
                                .background(Color.orange)
                                .cornerRadius(10)
                        }
                        .sheet(isPresented: $showLoginView) {
                            LoginView()
                        }
                    }
                    HStack {
                        
                        
                        Button(action: {
                            self.showAllgemeineInfosView = true
                        }) {
                            Text("Dokumente")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .padding()
                                .opacity(0.6)

                                .frame(width: 150, height: 150)
                                .background(Color.orange)
                                .cornerRadius(10)
                        }
                        .sheet(isPresented: $showAllgemeineInfosView) {
                            AllgemeineInfosView()
                        }
                    }
                    
                        
                        Button(action: {
                            self.showCoronaInfos = true
                        }) {
                            Text("Länderbestimmungen")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .padding()
                                .opacity(0.6)

                                .frame(width: 150, height: 150)
                                .background(Color.orange)
                                .cornerRadius(10)
                        }
                        .sheet(isPresented: $showCoronaInfos) {
                            showCoronaInfosView()
                        }
                        
                        Button(action: {
                            self.showDokumente = true
                        }) {
                            Text("Impfstatus")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .padding()
                                .opacity(0.6)

                                .frame(width: 150, height: 150)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        .sheet(isPresented: $showDokumente) {
                            ShowDokumenteView()
                        }
                    }
                }
                .padding()
                Spacer()
            }
        }
    }


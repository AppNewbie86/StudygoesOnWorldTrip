//
//  ContentView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authService : AuthService
    var body: some View {
        Group{
            if authService.user != nil{
                MainView()
            }else{
                LoginView()
            }
        }.onAppear{
            authService.listenToAuthState()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AuthService())
    }
}

//
//  StudygoesOnWorldTripApp.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 07.02.23.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct StudygoesOnWorldTripApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthService())
        }
    }
}








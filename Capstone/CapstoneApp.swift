//
//  CapstoneApp.swift
//  Capstone
//
//  Created by Shea Tipton on 1/30/23.
//

import SwiftUI
import FirebaseCore
import Firebase
import FirebaseAuth
import Combine

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

// ObservableObject to handle authentication state
class AuthState: ObservableObject {
    @Published var isUserAuthenticated = false
    //private var cancellables = Set<AnyCancellable>()
    init() {
        // Check authentication state on init
        checkAuthState()
    }
    
    func checkAuthState() {
        // Check if user is authenticated

        if let _ = Auth.auth().currentUser {
            isUserAuthenticated = true
        } else {
            isUserAuthenticated = false
        }

        Auth.auth().addStateDidChangeListener() { [weak self] (_, user) in
            // Update isUserAuthenticated property on main queue
            DispatchQueue.main.async {
                self?.isUserAuthenticated = user != nil
            }
        }
        

    } // checkAuthState
}

@main
struct CapstoneApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject private var authState = AuthState()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authState)
        }
    }
}

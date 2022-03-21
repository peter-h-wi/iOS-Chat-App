//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by peter wi on 3/21/22.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

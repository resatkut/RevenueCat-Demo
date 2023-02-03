//
//  RevenueCat_DemoApp.swift
//  RevenueCat-Demo
//
//  Created by Reşat Kut on 3.02.2023.
//

import SwiftUI
import RevenueCat

@main
struct RevenueCat_DemoApp: App {
    @StateObject var userViewModel = UserViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
                .environmentObject(userViewModel)
        }
        
    }
    init() {
            
            Purchases.logLevel = .debug
            Purchases.configure(withAPIKey: "Your_Own_Api_Key_From_RevenueCat.com")
        }
}

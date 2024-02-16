//
//  Crafty_Furniture_Ecommerce_SwiftUIApp.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 22/01/2024.
//

import SwiftUI
import Firebase

@main
struct Crafty_Furniture_Ecommerce_SwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

//
//  MainView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 25/01/2024.
//

import SwiftUI

struct MainView: View {
    
    @State var activeTab = 0
    
    var body: some View {
        TabView(selection: $activeTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            FavouriteView(backToHome: $activeTab)
                .tabItem {
                    Label("Favourite", systemImage: "heart")
                }
                .tag(1)
            
            ShoppingView(backToHome: $activeTab)
                .tabItem {
                    Label("Shopping", systemImage: "cart")
                }
                .toolbar(.hidden, for: .tabBar)
                .tag(2)
            
            ProfileView(backToHome: $activeTab)
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .toolbar(.hidden, for: .tabBar)
                .tag(3)
        }
        .tint(Color("primaryColor"))
        
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

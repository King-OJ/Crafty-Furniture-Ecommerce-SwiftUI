//
//  MainView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 25/01/2024.
//

import SwiftUI

struct MainView: View {
    
    
    
    enum Tab: String {
        case home
        case favourite
        case shopping
        case profile
    }
    
    @State var activeTab: Tab = .home
    var toolBarIcon : String {
        switch activeTab {
            case .home: return "";
            case .favourite: return "heart"
            case .shopping: return "cart"
            case .profile: return "person"
    }}
    
    var body: some View {
        
        TabView(selection: $activeTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
            
            NavigationStack {
                FavouriteView(backToHome: $activeTab)
                //to make the navigation bar background visible on scroll
                    .safeAreaInset(edge: .top) {
                        Color.clear
                            .frame(height: 1)
                            .background(.bar)
                    }
            }
            .tabItem {
                Label("Favourite", systemImage: "heart")
            }
            .tag(Tab.favourite)
            
            NavigationStack {
                ShoppingView(backToHome: $activeTab)
            }
            .tabItem {
                Label("Shopping", systemImage: "cart")
            }
            .toolbar(.hidden, for: .tabBar)
            .tag(Tab.shopping)
            
            
            NavigationStack {
                ProfileView(backToHome: $activeTab)
            }
            .tabItem {
                Label("Profile", systemImage: "person")
            }
            .tag(Tab.profile)
            
            
        }
        .navigationTitle(
            activeTab == .home || activeTab == .profile  ? "" : activeTab.rawValue.capitalized)
        .toolbar(content: {
            if activeTab != .home && activeTab != .profile  {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        withAnimation(.easeInOut(duration: 4)) {
                            activeTab = MainView.Tab.home
                        }
                        
                    }, label: {
                        Image(systemName: "chevron.left")
                            .padding(8)
                            .foregroundColor(.black)
                            .background(.white)
                            .clipShape(Circle())
                    }
                    )
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Image(systemName: toolBarIcon)
                        .padding(8)
                        .background(.white)
                        .clipShape(Circle())
                }
            }
        })
        .tint(Color("primaryColor"))
        
        
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

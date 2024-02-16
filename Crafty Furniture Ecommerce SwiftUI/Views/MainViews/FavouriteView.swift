//
//  FavouriteView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 25/01/2024.
//

import SwiftUI

struct FavouriteView: View {
    @Binding var backToHome: MainView.Tab
    
    @State private var productList = [ Product(productImg: "favouriteImg01", name: "Rotating Lounge Chair", subtitle: "Hans j. wegner", price: 39, seenBy: 391, likedBy: 294, description: "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.", rating: 4),
                                    Product(productImg: "favouriteImg02", name: "Trapeziam Arm Chair", subtitle: "Hans j. wegner", price: 36, seenBy: 5591, likedBy: 413, description: "This is a dummy text. I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 2),
                                       Product(productImg: "favouriteImg03", name: "Corada D3 Lounge Chair", subtitle: "Hans j. wegner", price: 45.21, seenBy: 391, likedBy: 294, description: "Here's another dummy text for this product. Again, I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 6),
                                       Product(productImg: "favouriteImg04", name: "Pearl Beading Fur Textured ", subtitle: "Hans j. wegner", price: 29.68, seenBy: 5591, likedBy: 413, description: "This is a dummy text. I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 2),
                                       Product(productImg: "mostInterested01", name: "Ox Mathis Furniture Modern Style", subtitle: "Hans j. wegner", price: 35.55, seenBy: 391, likedBy: 294, description: "Here's another dummy text for this product. Again, I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 6)
    ]
    
     let flexibleColumn = [
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 8),
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 8),
       ]
    
    
    var body: some View {
        
        VStack {
            ScrollView(.vertical, showsIndicators: false){
      
                    LazyVGrid(columns: flexibleColumn, spacing: 20) {
                        ForEach(productList) { product in
                            NavigationLink(destination: ProductDetailsView(product: product)
                                .toolbar(.hidden, for: .tabBar)
                                .navigationBarBackButtonHidden(true)
                            ){
                                SingleProductView(furniture: product)
                                
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 110)
                    
                    
                }
                
        }.frame(maxWidth: .infinity)
            .background(Color("offWhite"))
            .ignoresSafeArea()
        
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView(backToHome: MainView().$activeTab)
    }
}

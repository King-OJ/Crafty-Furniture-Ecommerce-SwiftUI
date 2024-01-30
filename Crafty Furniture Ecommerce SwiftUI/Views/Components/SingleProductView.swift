//
//  SingleProductView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 29/01/2024.
//

import SwiftUI

struct SingleProductView: View {
    
    var furniture: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            ZStack(alignment: .topTrailing) {
                
                    Image(furniture.productImg)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 150, maxHeight: 170)
                        .padding(.top, 10)
                        .padding(.trailing, 10)
                
                    Image(systemName: "heart")
                    .foregroundColor(Color("primaryColor"))
                    
                
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Text(furniture.name)
                .font(Font.custom("Switzer-Semibold", size: 16))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
                
            
            Text("$\(Double(furniture.price).toString(2))")
                .foregroundColor(Color("actionColor"))
                .font(Font.custom("Switzer-Semibold", size: 16))
                .padding(.top,1)
        }
        .frame(minWidth: 140)
        
    }
}

struct SingleProductView_Previews: PreviewProvider {
    static var previews: some View {
        SingleProductView(furniture: Product(productImg: "mostInterested02", name: "Pearl Beading Fur Textured", subtitle: "Hans lerge vans", price: 400.00, seenBy: 250, likedBy: 300, description: "A very decent product to be used", rating: 5))
    }
}

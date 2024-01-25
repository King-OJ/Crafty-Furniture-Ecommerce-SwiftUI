//
//  IntroView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 23/01/2024.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack {
            Color("primaryColor")
            
            VStack(spacing: 20) {
                Image("Crafty Furniture")
                
                Text("Crafty Furniture")
                    .font(Font.custom("Switzer-Semibold", size: 25))
                    .foregroundColor(.white)
                
            }
        }
        .ignoresSafeArea()
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

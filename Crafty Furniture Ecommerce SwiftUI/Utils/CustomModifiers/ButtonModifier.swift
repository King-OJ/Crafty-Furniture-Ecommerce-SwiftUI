//
//  ButtonModifier.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 24/01/2024.
//

import Foundation
import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Switzer-Medium", size:18))
            .frame(maxWidth: .infinity, minHeight: 55)
            .background(Color("primaryColor"))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: .gray, radius: 0.5, x: 0.2, y: 0)
            
    }
}

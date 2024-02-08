//
//  InputView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 06/02/2024.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    
    var body: some View {
        VStack (alignment: .leading , spacing: 10) {
            Text(title)
                .font(Font.custom("Switzer-Semibold", size: 16))
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .frame(height: 40)
                    .padding(4)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            else {
                TextField(placeholder, text: $text)
                    .frame(height: 40)
                    .padding(4)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "email", placeholder: "Enter your email")
    }
}

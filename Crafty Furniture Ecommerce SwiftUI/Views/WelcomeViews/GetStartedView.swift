//
//  GetStartedView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 24/01/2024.
//

import SwiftUI

struct GetStartedView: View {
    
    @State var isNewMember = false
    
    var body: some View {
        if isNewMember {
            SignUpView(showSignUp: $isNewMember)
        }
        else {
            LoginView(showSignUp: $isNewMember)
        }
        
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}

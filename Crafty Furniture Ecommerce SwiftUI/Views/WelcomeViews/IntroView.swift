//
//  IntroView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 23/01/2024.
//

import SwiftUI

struct IntroView: View {
    
    @State var showOnboardView = false
    
    var body: some View {
        NavigationStack {
                ZStack {
                    Color("primaryColor")
                    
                    VStack(spacing: 20) {
                        Image("Crafty Furniture")
                        
                        Text("Crafty Furniture")
                            .font(Font.custom("Switzer-Semibold", size: 25))
                            .foregroundColor(.white)
                        
                    }
                }
                .navigationDestination(isPresented: $showOnboardView, destination: {
                    OnboardView01()
                        .navigationBarBackButtonHidden(true)
                })
                .ignoresSafeArea()
                
            
        }
        .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.showOnboardView.toggle()
                    }
                }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

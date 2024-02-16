//
//  IntroView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 23/01/2024.
//

import SwiftUI

struct IntroView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
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
                    Group {
                        if viewModel.userSession != nil {
                            MainView()
                                .navigationBarBackButtonHidden(true)
                        }
                        else {
                            SignUpView()
                                .navigationBarBackButtonHidden(true)
                        }
                    }
                    
                    
                }
                
                )
                .ignoresSafeArea()
                
            
        }
        .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        self.showOnboardView.toggle()
                    }
                }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
            .environmentObject(AuthViewModel())
            
    }
}

//
//  LoginView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 24/01/2024.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                
                    Text("Welcome Back!")
                        .font(Font.custom("Switzer-Bold", size: 32))
                        .padding(.horizontal)
                        .padding(.bottom, 1)
                    
                    Text("Please Enter Your Details.")
                        .foregroundColor(Color("lightGrey"))
                        .font(Font.custom("Switzer-Regular", size: 16))
                        .padding(.horizontal)
                
               
                
                VStack(spacing: 25) {
                    InputView(text: $email, title: "Email", placeholder: "Enter your email", isSecureField: false)
                        .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                    
                    
                    HStack {
                        Text("Remember For 30 Days")
                            .foregroundColor(Color("lightGrey"))
                            .font(Font.custom("Switzer-Regular", size: 14))
                        
                        Spacer()
                        
                        Button {
                            //
                        } label: {
                            Text("Forgot Password")
                                .foregroundColor(.black)
                                .font(Font.custom("Switzer-Regular", size: 14))
                        }

                    }.padding(.vertical, 8)
                    
                    Button {
                        Task {
                            try await viewModel.signIn(email: email, password: password)
                        }
                        
                    } label: {
                        Text("Sign In")
                            .modifier(ButtonModifier())
                    }
                    
                    Button {
                        //
                    } label: {
                        HStack(spacing: 10) {
                            Image("GoogleImg")
                            Text("Sign In with Google")
                                
                        }
                        .font(Font.custom("Switzer-Medium", size:18))
                        .frame(maxWidth: .infinity, minHeight: 55)
                        .background(.white)
                        .foregroundColor(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .shadow(color: .gray, radius: 0.5, x: 0.2, y: 0)
                        
                    }
                    
                    Spacer()
                        
                    NavigationLink {
                        SignUpView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 2){
                            Text("Don't have an account? ").foregroundColor(Color("lightGrey"))
                            Text("Sign Up For Free")
                                .foregroundColor(.black)
                                .font(Font.custom("Switzer-Semibold", size: 14))
                        }
                        
                    }
                    .font(Font.custom("Switzer-Regular", size: 14))
                        
                    
                    

                  
                    
                }.padding()
                
            }
            .padding(.top, 50)
            .frame(maxHeight: .infinity)
            .background(Color("offWhite"))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

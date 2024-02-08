//
//  SignUpView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 24/01/2024.
//

import SwiftUI

struct SignUpView: View {
    
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading){
                
                    Text("Create Account")
                        .font(Font.custom("Switzer-Bold", size: 32))
                        .padding(.horizontal)
                        .padding(.bottom, 1)
                    
                    Text("Let’s create account together")
                        .foregroundColor(Color("lightGrey"))
                        .font(Font.custom("Switzer-Regular", size: 16))
                        .padding(.horizontal)
                
               
                
                VStack(spacing: 16) {
                    InputView(text: $name, title: "Full Name", placeholder: "Enter your full name", isSecureField: false)
                    
                    InputView(text: $email, title: "Email", placeholder: "Enter your email", isSecureField: false)
                        .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                    
                    InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Re-enter your password", isSecureField: true)
                    
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
                        print(name, email, password, confirmPassword)
                    } label: {
                        Text("Sign Up")
                            .modifier(ButtonModifier())
                            
                    }
                    
                    Button {
                        //
                    } label: {
                        HStack(spacing: 10) {
                            Image("GoogleImg")
                            Text("Sign Up with Google")
                                
                        }
                        .font(Font.custom("Switzer-Medium", size:18))
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                        .foregroundColor(.black)
                    }
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 0.5, x: 0.2, y: 0)
     
                    Spacer()

                        Button {
                            dismiss()
                        } label: {
                            HStack(spacing: 2){
                                Text("Already have an account? ").foregroundColor(Color("lightGrey"))
                                Text("Sign In")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Switzer-Semibold", size: 14))
                            }
                            
                        }
                        .font(Font.custom("Switzer-Regular", size: 14))
          
                    
                }
                .padding(.top, 10)
                .padding(.horizontal)
                
            }
            .padding(.top, 30)
            .frame(maxHeight: .infinity)
            .background(Color("offWhite"))
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

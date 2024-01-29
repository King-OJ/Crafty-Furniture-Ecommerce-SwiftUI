//
//  SignUpView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 24/01/2024.
//

import SwiftUI

struct SignUpView: View {
    
    @Binding var showSignUp: Bool
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(alignment: .leading){
            
                Text("Create Account")
                    .font(Font.custom("Switzer-Bold", size: 32))
                    .padding(.horizontal)
                    .padding(.bottom, 1)
                
                Text("Let’s create account toghter")
                    .foregroundColor(Color("lightGrey"))
                    .font(Font.custom("Switzer-Regular", size: 18))
                    .padding(.horizontal)
            
           
            
            VStack(spacing: 18) {
                VStack (alignment: .leading , spacing: 8) {
                    Text("Full Name")
                        .font(Font.custom("Switzer-Semibold", size: 16))
                    
                    TextField("Enter your name", text: $email)
                        .frame(height: 44)
                        .padding(4)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                }
                
                VStack (alignment: .leading , spacing: 8) {
                    Text("Email")
                        .font(Font.custom("Switzer-Semibold", size: 16))
                    
                    TextField("Enter your email", text: $email)
                        .frame(height: 44)
                        .padding(4)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                }
                
                VStack (alignment: .leading , spacing: 8) {
                    Text("Password")
                        .font(Font.custom("Switzer-Semibold", size: 16))
                    
                    SecureField("Enter your password", text: $password)
                        .frame(height: 44)
                        .padding(4)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                }
                
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
                    //
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
                    .frame(maxWidth: .infinity, minHeight: 55)
                    .background(.white)
                    .foregroundColor(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: .gray, radius: 0.5, x: 0.2, y: 0)
                }
                
                    
                HStack(spacing: 2) {
                    Text("Already have an account? ").foregroundColor(Color("lightGrey"))
                    Button(action: {
                        showSignUp = false;
                    }, label: {
                        Text("Sign In")
                            .foregroundColor(.black)
                            .font(Font.custom("Switzer-Semibold", size: 14))
                    })
                    
                    
                }.font(Font.custom("Switzer-Regular", size: 14))
                    .padding(.vertical, 8)
                    
                
                

              
                
            }.padding()
            
        }
        .frame(maxHeight: .infinity)
        .background(Color("offWhite"))
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(showSignUp: GetStartedView().$isNewMember)
    }
}

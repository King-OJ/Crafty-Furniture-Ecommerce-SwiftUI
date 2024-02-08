//
//  ProfileView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 25/01/2024.
//

import SwiftUI

struct ProfileView: View {
    
    
    @Binding var backToHome: Int
    
    @State private var listOptions = [["Account", "person"], ["Payment Methods", "creditcard"], ["Order History", "list.clipboard"], ["Delivery Address", "location"], ["Support Center", "questionmark.bubble"], ["Legal Policy", "book"]]
    
    var body: some View {
        NavigationStack {
  
                VStack(spacing: 12) {
                    VStack(spacing: 6) {
                        Image("profile-pic")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 48, height: 48)
                            .clipShape(Circle())
                        
                        Text("King OJ")
                            .font(Font.custom("Switzer-Semibold", size: 20))
                            .tracking(1)
                        
                        Text("talk2clemzy1@gmail.com")
                            .tint(Color("lightGrey"))
                            .font(Font.custom("Switzer-Regular", size: 18))
                    }
                    
                    List {
                        ForEach(listOptions, id: \.self) { list in
                            HStack{
                                
                                Label {
                                    Text(list[0])
                                        
                                } icon: {
                                    Image(systemName: list[1])
                                        .foregroundColor(Color("lightGrey"))
                                }

                            }
                            .font(Font.custom("Switzer-Regular", size: 18))
                            .listRowSeparator(.hidden)
                            .listRowBackground(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 6)
                            )
                            
                        }
                        .padding(.vertical)
                        
                        
                    }
                    .padding(.top, 20)
                    .listStyle(PlainListStyle())
                    .scrollContentBackground(.hidden)
                    
                    Spacer()
                    
                    NavigationLink(destination: GetStartedView()
                        .navigationBarBackButtonHidden(true)
                        .toolbar(.hidden, for: .tabBar)) {
                        Text("Logout")
                            .foregroundColor(.red)
                            .font(Font.custom("Switzer-Bold", size: 20))
                            .tracking(2)
                        }.padding(.bottom, 50)
                    
                    

                    
                }
                .padding(.horizontal)
                .padding(.top, 110)
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                .background(Color("offWhite"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
                .toolbar(content: {

                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            withAnimation(.easeInOut(duration: 4)) {
                                backToHome = 0
                            }
                            
                        }, label: {
                            Image(systemName: "chevron.left")
                                .padding()
                                .foregroundColor(.black)
                                .background(.white)
                                .clipShape(Circle())
                        }
                        )
                        
                    }

                    
                })
                
                
           
            
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(backToHome: MainView().$activeTab)
    }
}

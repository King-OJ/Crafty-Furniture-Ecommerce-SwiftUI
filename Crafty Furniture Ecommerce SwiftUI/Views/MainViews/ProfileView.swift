//
//  ProfileView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 25/01/2024.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    @Binding var backToHome: MainView.Tab
    
    @State private var listOptions = [["Account", "person"], ["Payment Methods", "creditcard"], ["Order History", "list.clipboard"], ["Delivery Address", "location"], ["Support Center", "questionmark.bubble"], ["Legal Policy", "book"], ["Logout","rectangle.portrait.and.arrow.right"]]
    
  
    
    var body: some View {
      
        
            VStack(spacing: 12) {
                VStack(spacing: 6) {
                    Image(viewModel.currentUser!.profileImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                    
                    Text(viewModel.currentUser!.fullname)
                        .font(Font.custom("Switzer-Semibold", size: 20))
                        .tracking(1)
                    
                    Text(viewModel.currentUser!.email)
                        .foregroundColor(Color("lightGrey"))
                        .font(Font.custom("Switzer-Regular", size: 16))
                        .tracking(1)
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
                
                
                
                
                
                
                
                
            }
            .padding(.horizontal)
            .padding(.top, 90)
            .background(Color("offWhite"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(backToHome: MainView().$activeTab)
            .environmentObject(AuthViewModel())
    }
}

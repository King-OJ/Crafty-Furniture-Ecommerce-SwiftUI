//
//  ProductDetailsView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 27/01/2024.
//

import SwiftUI

struct ProductDetailsView: View {
    
    let product: Product
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 14) {
                //product image
                Image(product.productImg)
                
                    .resizable()
                    .frame(width: 210, height: 240)
                    .padding(.horizontal)
                
                //product detail
                VStack(spacing: 10) {
                    //product title
                    HStack {
                        Text(product.name)
                            .font(Font.custom("Switzer-Bold", size: 24))
                        
                        Spacer()
                        
                        Text("$\(Double(product.price).toString(2))")
                            .font(Font.custom("Switzer-Semibold", size: 22))
                            .foregroundColor(Color("actionColor"))
                    }
                    
                    //product views,likes, ratings
                    HStack {
                        VStack(alignment:.leading ,spacing: 10) {
                            HStack(spacing: 4) {
                                HStack(spacing: 2) {
                                    Image(systemName: "person")
                                        .imageScale(.medium)
                                    
                                    Text("\(product.seenBy) Seen ")
                                }
                                
                                HStack(spacing: 2) {
                                    Image(systemName: "heart")
                                        .imageScale(.medium)
                                    
                                    Text("\(product.likedBy) Likes ")
                                }
                            }
                            .foregroundColor(Color("lightGrey"))
                            .font(Font.custom("Switzer-Medium", size: 16))
                            
                            HStack(spacing: 2) {
                                ForEach(0..<product.rating, id: \.self) { _ in
                                    Image(systemName: "star")
                                        .foregroundColor(Color("actionColor"))
                                }
                            }
                            
                        }
                        
                        Spacer()
                        
                        LazyHStack(spacing: -12) {
                            Image("profile-pic")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 35, height: 35)
                                .clipShape(
                                    Circle()
                                )
                            Image("profile-pic")
                                .resizable()
                                .scaledToFill()
                                .border(.white, width: 2)
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                            Image("profile-pic")
                                .resizable()
                                .scaledToFill()
                                .border(.white, width: 2)
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                        }
                    }
                }
                .padding(.horizontal)
                
                //product description
                
                VStack(alignment: .leading ,spacing: 10) {
                    Text("Description")
                        .font(Font.custom("Switzer-Semibold", size: 20))
                    
                    Text(product.description)
                        .font(Font.custom("Switzer-Medium", size: 18))
                        .foregroundColor(Color("lightGrey"))
                        .lineSpacing(5)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .overlay {
                        VStack {
                            HStack {
                                HStack(spacing: 10) {
                                    
                                    Text("-")
                                        .padding(10)
                                        .background(Color("lightGrey"))
                                        .opacity(0.5)
                                        .foregroundColor(.black)
                                        .font(.title2)
                                        .clipShape(Circle())
                                    
                                    Text("04")
                                        .font(Font.custom("Switzer-Medium", size: 20))
                                    
                                    Text("+")
                                        .padding(9)
                                        .background(Color("primaryColor"))
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .clipShape(Circle())
                                }
                                
                                Spacer()
                                
                                Text("Total : $\(Double(product.price).toString(2))")
                                    .font(Font.custom("Switzer-Medium", size: 20))
                                
                            }
                            
                            Button {
                                //
                            } label: {
                                Text("Add To Card")
                                    .modifier(ButtonModifier())
                            }
                            .zIndex(101)

                        }.padding()
                    }
                    .zIndex(100)
                
            }
            .toolbar(content: {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .padding()
                            .foregroundColor(.black)
                            .background(.white)
                            .clipShape(Circle())
                    })
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "heart")
                        .padding()
                        .background(.white)
                        .clipShape(Circle())
                }
            })
            .padding(.top, 90)
            .background(Color("offWhite"))
            .ignoresSafeArea()
        }
        
        
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: Product(productImg: "mostInterested02", name: "Ox Mathis Furniture Modern Style", subtitle: "Hans lerge vans", price: 400.00, seenBy: 250, likedBy: 300, description: "A very decent product to be used", rating: 5))
    }
}

//
//  ShoppingView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 25/01/2024.
//

import SwiftUI

struct ShoppingView: View {
    
    @Binding var backToHome: Int
    
    @State private var shoppingList = [ Product(productImg: "shoppingImg01", name: "Minimalist Chair", subtitle: "Regal Do Lobo", price: 279.95, seenBy: 391, likedBy: 294, description: "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.", rating: 4),
                                        Product(productImg: "shoppingImg02", name: "Hallingdal Chair", subtitle: "Hallingdal Chair", price: 258.91, seenBy: 5591, likedBy: 413, description: "This is a dummy text. I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 2),
                                        Product(productImg: "shoppingImg03", name: "Hiro Armchair", subtitle: "Hatil-Loren", price: 369.86, seenBy: 391, likedBy: 294, description: "Here's another dummy text for this product. Again, I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 6)
                                        ,
                                        Product(productImg: "shoppingImg03", name: "Hiro Armchair", subtitle: "Hatil-Loren", price: 369.86, seenBy: 391, likedBy: 294, description: "Here's another dummy text for this product. Again, I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 6),
                                        Product(productImg: "shoppingImg03", name: "Hiro Armchair", subtitle: "Hatil-Loren", price: 369.86, seenBy: 391, likedBy: 294, description: "Here's another dummy text for this product. Again, I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 6),
                                        Product(productImg: "shoppingImg03", name: "Hiro Armchair", subtitle: "Hatil-Loren", price: 369.86, seenBy: 391, likedBy: 294, description: "Here's another dummy text for this product. Again, I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 6)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .center, spacing: 10) {
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(shoppingList) { list in
                            ZStack{
                                HStack {
                                    HStack {
                                        ZStack {
                                            Image(list.productImg)
                                                .resizable()
                                                .scaledToFill()
                                        }
                                        .frame(width: 72, height: 72)
                                        .background(Color("offWhite"))
                                        .clipShape(RoundedRectangle(cornerRadius: 14))
                                        
                                        
                                        VStack(alignment: .leading, spacing: 3) {
                                            Text(list.name)
                                                .font(Font.custom("Switzer-Bold", size: 15))
                                            
                                            Text(list.subtitle)
                                                .font(Font.custom("Switzer-Medium", size: 13))
                                                .foregroundColor(Color("lightGrey"))
                                            
                                            Text("$\(Double(list.price).toString(2))")
                                                .foregroundColor(Color("actionColor"))
                                                .font(Font.custom("Switzer-Semibold", size: 15))
                                                .padding(.vertical, 10)
                                            
                                           
                                        }
                                    }
                                    
                                    Spacer()
                                    
                                    HStack(spacing: 10) {
                                        
                                        Text("-")
                                            .padding(8)
                                            .background(Color("lightGrey"))
                                            .opacity(0.5)
                                            .foregroundColor(.black)
                                            .font(.title2)
                                            .clipShape(Circle())
                                        
                                        Text("04")
                                            .font(Font.custom("Switzer-Medium", size: 18))
                                        
                                        Text("+")
                                            .padding(8)
                                            .background(Color("primaryColor"))
                                            .foregroundColor(.white)
                                            .font(.title2)
                                            .clipShape(Circle())
                                    }
                                }.padding()
                            }
                            .frame(maxWidth: .infinity, maxHeight: 120)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                        }
                    }
                    
                    
                }.padding(.horizontal)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .overlay {
                        VStack(alignment: .leading, spacing: 20) {
                            
                            Text("Order Summary")
                                .font(Font.custom("Switzer-Medium", size: 18))
                            
                            VStack(spacing: 10) {
                                HStack {
                                    Text("Subtotal")
                                        .foregroundColor(Color("lightGrey"))
                                    
                                    Spacer()
                                    
                                    Text("$926.89")
                                        .foregroundColor(Color("actionColor"))
                                }
                                .font(Font.custom("Switzer-Medium", size: 16))
                                
                                HStack {
                                    Text("Shipping Cost")
                                        .foregroundColor(Color("lightGrey"))
                                    
                                    Spacer()
                                    
                                    Text("$26.00")
                                        .foregroundColor(Color("actionColor"))
                                }
                                .font(Font.custom("Switzer-Medium", size: 16))
                            }
                           
                            
                            HStack {
                                Text("Total Payment")
                                
                                Spacer()
                                
                                Text("$926.89")
                                    .foregroundColor(Color("actionColor"))
                            }
                            .font(Font.custom("Switzer-Medium", size: 18))
                            
                            NavigationLink(destination: CheckoutView().toolbar(.hidden, for: .tabBar)) {
                                Text("Check out")
                                    .modifier(ButtonModifier())
                                }
                           

                        }.padding()
                    }
                    .frame(maxHeight: 268)
            }
            .padding(.top, 110)
            .navigationTitle("Shopping")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {

                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        backToHome = 0
                    }, label: {
                        Image(systemName: "chevron.left")
                            .padding()
                            .foregroundColor(.black)
                            .background(.white)
                            .clipShape(Circle())
                    })
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "trash")
                        .padding()
                        .background(.white)
                        .clipShape(Circle())
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("offWhite"))
            .ignoresSafeArea()
        }
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView(backToHome: MainView().$activeTab)
    }
}

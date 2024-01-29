//
//  HomeView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 25/01/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText=""
    @State private var activeFilter = 0
    
    @State private var filters = [ Filter(title: "Arm Chair", icon: "chair.lounge"), Filter(title: "Sofa", icon: "sofa"), Filter(title: "Bed", icon: "bed.double"), Filter(title: "Light", icon: "chandelier") ]
    
    @State private var products = [ Product(productImg: "mostInterested01", name: "Ox Mathis Chair", subtitle: "Hans j. wegner", price: 900, seenBy: 391, likedBy: 294, description: "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.", rating: 4), 
                                    Product(productImg: "mostInterested02", name: "Fuji Arm Chair", subtitle: "Hans j. wegner", price: 450, seenBy: 5591, likedBy: 413, description: "This is a dummy text. I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 2),
                                    Product(productImg: "mostInterested01", name: "Laju Chair", subtitle: "Hans j. wegner", price: 1500, seenBy: 391, likedBy: 294, description: "Here's another dummy text for this product. Again, I could'nt come up with a product description but am sure this will do. Doesn't really say much but I can't find a lorem Ipsum text for now", rating: 6)
    ]
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    //user info and notification section
                    HStack {
                        HStack(spacing: 12) {
                            Image("profile-pic")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 48, height: 48)
                                .clipShape(Circle())
                            
                            VStack (spacing: 6) {
                                Text("Welcome")
                                    .foregroundColor(Color("lightGrey"))
                                    .font(Font.custom("Switzer-Regular", size: 13))
                                
                                Text("King OJ")
                                    .font(Font.custom("Switzer-Medium", size: 16))
                            }
                        }
                        
                        Spacer()
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundColor(.white)
                            .overlay(alignment: .center) {
                                Image(systemName: "bell.badge")
                                    .imageScale(.large)
                            }
                    }
                    
                    //search field section
                    TextField("Search Furniture", text: $searchText)
                        .padding()
                        .padding(.leading, 25)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .imageScale(.large)
                                    .foregroundColor(Color("lightGrey"))
                                
                                Spacer()
                                
                                Image(systemName: "slider.horizontal.3")
                                    .imageScale(.large)
                                    .foregroundColor(Color("lightGrey"))
                                
                            }.padding(.horizontal, 6)
                                
                        }
                    
                    //special offer section
                    VStack( spacing: 10) {
                        //special offer title
                        HStack {
                            Text("Special Offer")
                                .font(Font.custom("Switzer-Bold", size: 18))
                            Spacer()
                        }
                        
                        //special offers scroll view
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ZStack(alignment: .topLeading) {
                                    Image("SpecialOffer01")
                                        .resizable()
                                        .overlay {
                                            Color.black
                                                .opacity(0.2)
                                        }
                                    
                                    VStack(alignment:.leading, spacing: 4) {
                                        Text("25% Discount")
                                            .foregroundColor(.white)
                                            .font(Font.custom("Switzer-Bold", size: 20))
                                        
                                        Text("For a cozy yellow set!")
                                            .foregroundColor(.white)
                                            .opacity(0.8)
                                            .font(Font.custom("Switzer-Semibold", size: 16))
                                            .padding(.bottom)
                                        
                                        Button {
                                            //
                                        } label: {
                                            RoundedRectangle(cornerRadius: 50)
                                                .foregroundColor(Color("primaryColor"))
                                                .overlay {
                                                    Text("Learn More")
                                                        .foregroundColor(.white)
                                                        .font(Font.custom("Switzer-Semibold", size: 13))
                                                }
                                        }
                                        .frame(width: 92, height: 34)

                                        
                                    }.padding()
                                }
                                .frame(width: 264, height: 130)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                
                                ZStack(alignment: .topLeading) {
                                    Image("SpecialOffer02")
                                        .resizable()
                                        .overlay {
                                            Color.black
                                                .opacity(0.2)
                                        }
                                    
                                    VStack(alignment:.leading, spacing: 4) {
                                        Text("35% Discount")
                                            .foregroundColor(.white)
                                            .font(Font.custom("Switzer-Bold", size: 20))
                                        
                                        Text("For a cozy yellow set!")
                                            .foregroundColor(.white)
                                            .opacity(0.8)
                                            .font(Font.custom("Switzer-Semibold", size: 16))
                                            .padding(.bottom)
                                        
                                        Button {
                                            //
                                        } label: {
                                            RoundedRectangle(cornerRadius: 50)
                                                .foregroundColor(Color("primaryColor"))
                                                .overlay {
                                                    Text("Shop Now")
                                                        .foregroundColor(.white)
                                                        .font(Font.custom("Switzer-Semibold", size: 13))
                                                }
                                        }
                                        .frame(width: 92, height: 34)
                                        
                                        
                                    }.padding()
                                    
                                }
                                .frame(width: 264, height: 130)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                
                            }
                        }
           

                        }
                    
                    //scrollview filters section
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            
                            ForEach(filters) { filter in
                                Button {
                                    activeFilter = filters.firstIndex(of: filter)!
                                } label: {
                                    HStack(spacing: 4) {
                                        Image(systemName: filter.icon)
                                            .imageScale(.small)
                                        Text(filter.title)
                                            .font(Font.custom("Switzer-Medium", size: 15))
                                        
                                    }.padding(8)
                                        .padding(.horizontal, 10)
                                        .foregroundColor(filters.firstIndex(of: filter) == activeFilter ? .white : Color("lightGrey"))
                                        .background( filters.firstIndex(of: filter) == activeFilter ? Color("primaryColor") : .white)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(color: Color("lightGrey"), radius: 1, x: 0, y: 0.5)
                                               
                                        
                                }
                            }
                            
                           
                            
                        }
                            
                    }
                    
                    //most interested section
                    VStack(spacing: 10) {
                        //most interested title
                        HStack {
                            Text("Most Interested")
                                .font(Font.custom("Switzer-Bold", size: 18))
                            
                            Spacer()
                            
                            Text("View All")
                                .foregroundColor(Color("actionColor"))
                                .font(Font.custom("Switzer-Regular", size: 14))
                            
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(products) { product in
                                    NavigationLink(destination: ProductDetailsView(product: product)
                                        .toolbar(.hidden, for: .tabBar)
                                        .navigationBarBackButtonHidden(true)
                                    ) {
                                        ZStack(alignment: .center) {
                                            VStack {
                                                Image(product.productImg)
                                                    .resizable()
                                                    .scaledToFit()
                                                
                                                HStack {
                                                    VStack(alignment: .leading, spacing: 8) {
                                                        Text(product.name)
                                                            .font(Font.custom("Switzer-Bold", size: 18))
                                                            .foregroundColor(.black)
                                                        
                                                        Text(product.subtitle)
                                                            .font(Font.custom("Switzer-Medium", size: 15))
                                                            .foregroundColor(Color("lightGrey"))
                                                    }
                                                    
                                                    Spacer()
                                                    
                                                    Circle()
                                                        .foregroundColor(Color("primaryColor"))
                                                        .frame(width: 35, height: 35, alignment: .center)
                                                        .overlay {
                                                            Image(systemName: "bag.badge.plus")
                                                                .foregroundColor(.white)
                                                        }
                                                }
                                                
                                                HStack {
                                                    Text("N\(product.price)")
                                                        .foregroundColor(Color("actionColor"))
                                                        .font(Font.custom("Switzer-Semibold", size: 18))
                                                    
                                                    Spacer()
                                                }
                                            }
                                            .padding()
                                        }
                                        .frame(width: 220, height: 260)
                                        .background(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 14))
                                    }
                                }
                                
                            }
                            
                           
                        }
                    }
                    
                    //most popular section
                    VStack(spacing: 10) {
                        //most popular title
                        HStack {
                            Text("Popular")
                                .font(Font.custom("Switzer-Bold", size: 18))
                            
                            Spacer()
                            
                            Text("View All")
                                .foregroundColor(Color("actionColor"))
                                .font(Font.custom("Switzer-Regular", size: 14))
                            
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ZStack{
                                    HStack {
                                        ZStack {
                                            Image("popularImg01")
                                                .resizable()
                                                .scaledToFill()
                                        }
                                        .frame(width: 72, height: 72)
                                        .background(Color("offWhite"))
                                        .clipShape(RoundedRectangle(cornerRadius: 14))
                                        
                                        
                                        VStack(alignment: .leading, spacing: 3) {
                                            Text("Swoon Lounge")
                                                .font(Font.custom("Switzer-Bold", size: 15))
                                            
                                            Text("Regal Do Lobo")
                                                .font(Font.custom("Switzer-Medium", size: 13))
                                                .foregroundColor(Color("lightGrey"))
                                            
                                            Text("N350.00")
                                                .foregroundColor(Color("actionColor"))
                                                .font(Font.custom("Switzer-Semibold", size: 15))
                                                .padding(.vertical, 10)
                                            
                                           
                                        }
                                    }
                                    .padding()
                                }
                                .frame(width: 230, height: 120)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                
                                ZStack{
                                    HStack {
                                        ZStack {
                                            Image("popularImg02")
                                                .resizable()
                                                .scaledToFill()
                                        }
                                        .frame(width: 72, height: 72)
                                        .background(Color("offWhite"))
                                        .clipShape(RoundedRectangle(cornerRadius: 14))
                                        
                                        
                                        VStack(alignment: .leading, spacing: 3) {
                                            Text("Touco Armachiar")
                                                .font(Font.custom("Switzer-Bold", size: 15))
                                            
                                            Text("Hatil-Loren")
                                                .font(Font.custom("Switzer-Medium", size: 13))
                                                .foregroundColor(Color("lightGrey"))
                                            
                                            Text("N540.00")
                                                .foregroundColor(Color("actionColor"))
                                                .font(Font.custom("Switzer-Semibold", size: 15))
                                                .padding(.vertical, 10)
                                            
                                           
                                        }
                                    }
                                    .padding()
                                }
                                .frame(width: 230, height: 120)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                
                                
                            }
                            
                           
                        }
                    }
                    
                    Spacer()
                    
                }
                .padding()
                .padding(.vertical, 50)
                
                
            }
            .background(Color("offWhite"))
            .ignoresSafeArea()
        }
            
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

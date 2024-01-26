//
//  HomeView.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 25/01/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText=""
    @State private var filters = [ Filter(title: "Arm Chair", icon: "chair.lounge"), Filter(title: "Sofa", icon: "sofa"), Filter(title: "Bed", icon: "bed.double"), Filter(title: "Light", icon: "chandelier") ]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack (spacing: 20) {
                //user info and notification
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
                
                //search field
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
                
                //scrollview for filters
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        
                        ForEach(filters) { filter in
                            Button {
                                //
                            } label: {
                                
                                HStack(spacing: 4) {
                                    Image(systemName: filter.icon)
                                        .imageScale(.small)
                                    Text(filter.title)
                                        .font(Font.custom("Switzer-Medium", size: 15))
                                    
                                }.padding(8)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(filter == filters[0] ? .white : Color("lightGrey"))
                                    .background( filter == filters[0] ? Color("primaryColor") : .white)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .shadow(color: Color("lightGrey"), radius: 1, x: 0, y: 0.5)
                                           
                                    
                            }
                        }
                        
                       
                        
                    }
                        
                }
                    
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
                            ZStack(alignment: .center) {
                                VStack {
                                    Image("mostInterested01")
                                        .resizable()
                                        .scaledToFit()
                                    
                                    HStack {
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text("Ox Mathis Chair")
                                                .font(Font.custom("Switzer-Bold", size: 18))
                                            
                                            Text("Hans j. wegner")
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
                                        Text("N900.00")
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
                            
                            ZStack(alignment: .center) {
                                VStack {
                                    Image("mostInterested02")
                                        .resizable()
                                        .scaledToFit()
                                    
                                    HStack {
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text("Fuji Arm Chair")
                                                .font(Font.custom("Switzer-Bold", size: 18))
                                            
                                            Text("Hans j. wegner")
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
                                        Text("N900.00")
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
                                        .scaledToFit()
                                    }
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
                                        .scaledToFit()
                                    }
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
            .background(Color("offWhite"))
            
        }.ignoresSafeArea()
            
    }
}

struct Filter: Identifiable, Equatable {
    let id = UUID()
    var title : String
    var icon: String
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

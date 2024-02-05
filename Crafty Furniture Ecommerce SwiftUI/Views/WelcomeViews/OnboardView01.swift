//
//  OnboardView01.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 23/01/2024.
//

import SwiftUI

struct OnboardView01: View {
    
    init() {
                  UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(named: "primaryColor")
                    UIPageControl.appearance().pageIndicatorTintColor = UIColor(named: "primaryColor")!.withAlphaComponent(0.3)
               }
    
    @State private var features = [
        Feature(image: "OnBoardImg01", text: "View And Exprience Furniture With The Help Of Augmented Reality", tag: 0),
        Feature(image: "OnBoardImg02", text: "Design Your Space With Augmented Reality By Creating Room", tag: 1),
        Feature(image: "OnBoardImg03", text: "Explore World Class Top Furnitures As Per Your Requirements & Choice", tag: 2)
    ]
    
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(features) { feature in
                    VStack {
                        Image(feature.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width, height: 400, alignment: .bottom)
                            .clipShape(Circle())
                        
                        Text(feature.text)
                            .multilineTextAlignment(.center)
                            .font(Font.custom("Switzer-Semibold", size: 24))
                            .lineSpacing(5)
                            .padding()
                    }
                    .tag(feature.tag)
                }
            }
            .frame( height: 620)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .onChange(of: currentIndex) { value in print("current index = \(value)") }
            
            Spacer()
            
            if currentIndex == 2 {
                Button {
                    //
                } label: {
                    Text("Get Started")
                        .modifier(ButtonModifier())
                        .padding(.horizontal)
                }

            }
            else {
                HStack {
                    Button {
                        //
                    } label: {
                        Text("Skip")
                            .foregroundColor(Color("lightGrey"))
                            .font(Font.custom("Switzer-Regular", size: 18))
                    }
                    
                    Spacer()
                    
                    Button {
                        currentIndex = currentIndex + 1
                    } label: {
                        Circle()
                            .foregroundColor(Color("primaryColor"))
                            .frame(width: 60, height: 60)
                            .overlay(alignment: .center) {
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.white)
                                    .imageScale(.large)
                            }
                    }
                    
                    
                }
                .padding(.horizontal)
            }
            
        }
        .frame(maxHeight: .infinity)
       
    }
}



struct OnboardView01_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView01()
    }
}

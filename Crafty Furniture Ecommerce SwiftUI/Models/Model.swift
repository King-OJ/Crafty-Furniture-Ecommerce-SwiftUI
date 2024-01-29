//
//  Model.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 27/01/2024.
//

import Foundation

struct Filter: Identifiable, Equatable {
    let id = UUID()
    var title : String
    var icon: String
    
}

struct Product: Identifiable {
    let id = UUID()
    var productImg : String
    var name : String
    var subtitle : String
    var price : Double
    var seenBy: Int
    var likedBy: Int
    var description: String
    var rating: Int
}

struct Feature: Identifiable {
    var image: String
    var text: String
    var tag: Int
    let id = UUID()
}

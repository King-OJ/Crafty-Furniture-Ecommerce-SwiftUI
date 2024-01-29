//
//  Extension.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 27/01/2024.
//

import Foundation

extension Double {
    func toString(_ numOfDecimal: Int) -> String {
        return String(format: "%.\(numOfDecimal)f", self)
    }
}

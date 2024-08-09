//
//  Product.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

struct Product: Identifiable, Hashable {
    let id: UUID
    var name: String
    var price: Double
    var imageName: String
    var rating: Double
    var isFavorite: Bool
    var activeCardDiscount: Bool
    
    init(id: UUID = UUID(), name: String, price: Double, imageName: String, rating: Double, isFavorite: Bool, activeCardDiscount: Bool) {
        self.id = id
        self.name = name
        self.price = price
        self.imageName = imageName
        self.rating = rating
        self.isFavorite = isFavorite
        self.activeCardDiscount = activeCardDiscount
    }
    
}


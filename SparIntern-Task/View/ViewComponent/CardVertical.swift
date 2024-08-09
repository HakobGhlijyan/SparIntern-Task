//
//  CardVertical.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardVertical: View {
    @EnvironmentObject var viewModel: ProductViewModel
    var product: Product
    var cardState: Bool
    
    var body: some View {
        VStack {
            CardImageSection(product: product, cardState: cardState)
//            CardImageSection(product: product, imageFrameSize: cardState ? 148 : 168, cardState: cardState)
            CardInfoSection(product: product, cardState: product.cardStateAddingActive)
        }
        .overlay(alignment: .topTrailing, content: {
            CardActionList(product: product)
        })
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 2, y: -2)
        .shadow(color: .black.opacity(0.1), radius: 2, x: -2, y: 2)
    }
}

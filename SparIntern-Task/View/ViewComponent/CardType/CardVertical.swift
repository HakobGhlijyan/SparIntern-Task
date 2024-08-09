//
//  CardVertical.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardVertical: View {
    var product: Product
    var enumPriceCardState: EnumPriceCardState = .small
    var enumCardImageSizeSection: EnumCardImageSizeSection
    var enumCardVerticalState: EnumCardVerticalState

    var body: some View {
        VStack {
            CardImageSection(
                product: product,
                enumCardImageSizeSection: enumCardImageSizeSection
            )
            CardInfoSection(
                product: product,
                enumCardVerticalState: enumCardVerticalState,
                enumPriceCardState: enumPriceCardState,
                enumProductCard: .verticalCard
            )
            .padding(.bottom, 4)
        }
        .overlay(alignment: .topTrailing, content: {
            CardActionList(product: product)
        })
        .background(Color.white)
        .cornerRadius(4)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 2, y: -2)
        .shadow(color: .black.opacity(0.1), radius: 2, x: -2, y: 2)
    }
}

#Preview {
    VStack {
        CardVertical(
            product: Product(name: "сыр Ламбер 500/0 230г",
                             price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
            enumCardImageSizeSection: .big,
            enumCardVerticalState: .verticalOnlyPrice
        )
        CardVertical(
            product: Product(name: "сыр Ламбер 500/0 230г",
                             price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
            enumCardImageSizeSection: .small,
            enumCardVerticalState: .verticalChangeProduct
        )
    }
}

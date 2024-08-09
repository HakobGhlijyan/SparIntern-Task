//
//  CardHorizontal.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardHorizontal: View {
    var product: Product
    var actionListEnable: Bool
    var enumPriceCardState: EnumPriceCardState = .long
    var enumCardImageSizeSection: EnumCardImageSizeSection
    var enumCardVerticalState: EnumCardVerticalState
    
    var body: some View {
        VStack {
            Divider()
            HStack {
                CardImageSection(
                    product: product,
                    enumCardImageSizeSection: enumCardImageSizeSection
                )
                CardInfoSection(
                    product: product,
                    enumCardVerticalState: enumCardVerticalState,
                    enumPriceCardState: enumPriceCardState,
                    enumProductCard: .horizontalCard
                )
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .overlay(alignment: .topTrailing, content: {
            if actionListEnable {
                CardActionList(product: product)
            }
        })

    }
}

#Preview {
    VStack {
        CardHorizontal(
            product: Product(name: "сыр Ламбер 500/0 230г",
                             price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false),
            actionListEnable: true,
            enumCardImageSizeSection: .little,
            enumCardVerticalState: .verticalOnlyPrice
        )
        CardHorizontal(
            product: Product(name: "сыр Ламбер 500/0 230г",
                             price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false),
            actionListEnable: false,
            enumCardImageSizeSection: .small,
            enumCardVerticalState: .verticalOnlyPrice
        )
        CardHorizontal(
            product: Product(name: "сыр Ламбер 500/0 230г",
                             price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false),
            actionListEnable: true,
            enumCardImageSizeSection: .little,
            enumCardVerticalState: .verticalChangeProduct
        )
        CardHorizontal(
            product: Product(name: "сыр Ламбер 500/0 230г",
                             price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false),
            actionListEnable: true,
            enumCardImageSizeSection: .small,
            enumCardVerticalState: .verticalChangeProduct
        )
    }
}

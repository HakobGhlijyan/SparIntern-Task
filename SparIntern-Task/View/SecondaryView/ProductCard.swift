//
//  ProductCard.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    var enumProductCard: EnumProductCard
    var actionListEnable: Bool = true
    var enumCardImageSizeSection: EnumCardImageSizeSection
    var enumCardVerticalState: EnumCardVerticalState
    
    var body: some View {
        if enumProductCard == .verticalCard {
            CardVertical(
                product: product,
                enumCardImageSizeSection: enumCardImageSizeSection,
                enumCardVerticalState: enumCardVerticalState
            )
        } else {
            CardHorizontal(
                product: product,
                actionListEnable: actionListEnable,
                enumCardImageSizeSection: enumCardImageSizeSection,
                enumCardVerticalState: enumCardVerticalState
            )
        }
    }
}


#Preview {
    ZStack {
        Color.black.opacity(
            0.1
        ).ignoresSafeArea()
        
        VStack {
            ProductCard(
                product: Product(
                    name: "сыр Ламбер 500/0 230г",
                    price: 90.90,
                    imageName: "Image-0",
                    rating: 4.1,
                    isFavorite: false,
                    activeCardDiscount: false,
                    cardStateAddingActive: true
                ),
                enumProductCard: .verticalCard,
                enumCardImageSizeSection: .big,
                enumCardVerticalState: .verticalOnlyPrice
            )
            ProductCard(
                product: Product(
                    name: "сыр Ламбер 500/0 230г",
                    price: 90.90,
                    imageName: "Image-0",
                    rating: 4.1,
                    isFavorite: false,
                    activeCardDiscount: false,
                    cardStateAddingActive: true
                ),
                enumProductCard: .horizontalCard,
                enumCardImageSizeSection: .big,
                enumCardVerticalState: .verticalOnlyPrice
            )
            
        }
    }
}

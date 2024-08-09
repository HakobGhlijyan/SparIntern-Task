//
//  ProductCard.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

enum EnumProductCard {
    case verticalCard
    case horizontalCard
}

struct ProductCard: View {
    var product: Product
    var enumProductCard: EnumProductCard
    var actionListEnable: Bool = true
    var enumCardImageSizeSection: EnumCardImageSizeSection

    var body: some View {
        if enumProductCard == .verticalCard {
            CardVertical(product: product, enumCardImageSizeSection: enumCardImageSizeSection)
        } else {
            CardHorizontal(product: product, actionListEnable: actionListEnable, enumCardImageSizeSection: enumCardImageSizeSection)
        }
    }
}


struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.opacity(0.1).ignoresSafeArea()
            
            VStack {
                ProductCard(product: Product(
                    name: "сыр Ламбер 500/0 230г",
                    price: 90.90,
                    imageName: "Image-0",
                    rating: 4.1,
                    isFavorite: false,
                    activeCardDiscount: false,
                    cardStateAddingActive: true
                ), enumProductCard: .verticalCard, enumCardImageSizeSection: .big)
                
            }
        }
    }
}

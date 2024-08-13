//
//  CardInfoSection.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardInfoSection: View {
    var product: Product
    var enumCardVerticalState: EnumCardVerticalState //!!!!
    var enumPriceCardState: EnumPriceCardState
    var enumProductCard: EnumProductCard
    
    var body: some View {
        VStack {
            Text(product.name)
                .padding(6)
                .font(.system(size: 12))
                .fontWeight(.light)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()
            
            if enumCardVerticalState == .verticalOnlyPrice {
                if enumPriceCardState == .long {
                    VStack(spacing: 0.0) {
                        CardButtonInActiveVolume()
                            .opacity(0)
                        CardButtonNoActive(product: product, enumPriceCardState: .small)
                    }
                } else {
                    VStack(spacing: 0.0) {
                        CardButtonInActiveVolume()
                            .opacity(0)
                        CardButtonNoActive(product: product, enumPriceCardState: .small)
                    }
                }
            } else if enumCardVerticalState == .verticalChangeProduct {
                if enumPriceCardState == .long {
                    VStack(spacing: 0.0) {
                        CardButtonInActiveVolume()
                        CardButtonInActive(product: product, kgCount: 0.0, moneyCount: 12.5)
                    }
                } else {
                    VStack(spacing: 0.0) {
                        CardButtonInActiveVolume()
                        CardButtonInActive(product: product, kgCount: 0.0, moneyCount: 12.5)
                    }
                }
            }
        }
        .frame(
            width: enumProductCard == .verticalCard ? 168 : 199,
            height: enumProductCard == .horizontalCard ? 144 : (enumCardVerticalState == .verticalOnlyPrice ? 110 : 130)
        )
        .background(.white)
    }
}

#Preview {
    ZStack {
        Color.black.opacity(0.1).ignoresSafeArea()
        
        VStack(spacing: 50) {
            VStack {
                CardInfoSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: false
                    ),
                    enumCardVerticalState: .verticalOnlyPrice,
                    enumPriceCardState: .long,
                    enumProductCard: .verticalCard
                )
                
                CardInfoSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: false
                    ),
                    enumCardVerticalState: .verticalChangeProduct,
                    enumPriceCardState: .long,
                    enumProductCard: .verticalCard
                )
                
            }
            
            VStack {
                CardInfoSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: false
                    ),
                    enumCardVerticalState: .verticalOnlyPrice,
                    enumPriceCardState: .small,
                    enumProductCard: .horizontalCard
                )
                
                CardInfoSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: false
                    ),
                    enumCardVerticalState: .verticalChangeProduct,
                    enumPriceCardState: .small,
                    enumProductCard: .horizontalCard
                )
            }

        }
    }
}

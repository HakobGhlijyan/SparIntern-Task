//
//  CardInfoSection.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardInfoSection: View {
    var product: Product
    var enumCardButtonNoActive: EnumCardButtonNoActive
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(product.name)
                .padding(8)
                .font(.system(size: 12))
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity)

            Spacer()
            
            if enumCardButtonNoActive == .long {
                VStack(spacing: 0.0) {
                    CardButtonInActiveVolume()
                        .opacity(enumCardButtonNoActive == .small ? 1 : 0)
                    CardButtonNoActive(product: product, enumCardButtonNoActive: .long)
                }
            } else {
                VStack(spacing: 0.0) {
                    CardButtonInActiveVolume()
                        .opacity(enumCardButtonNoActive == .small ? 1 : 0)
                    CardButtonInActive(product: product, kgCount: 0.0, moneyCount: 12.5)
                }
            }
            
        }
        .frame(width: 168, height: enumCardButtonNoActive == .long ? 110 : 130)
        .background(.white)
    }
}

#Preview {
    ZStack {
        Color.black.opacity(0.1).ignoresSafeArea()
        
        VStack {
            CardInfoSection(product: Product(
                name: "сыр Ламбер 500/0 230г",
                price: 90.90,
                imageName: "Image-0",
                rating: 4.1,
                isFavorite: false,
                activeCardDiscount: false,
                cardStateAddingActive: true
            ), enumCardButtonNoActive: .long)
            
            CardInfoSection(product: Product(
                name: "сыр Ламбер 500/0 230г",
                price: 90.90,
                imageName: "Image-0",
                rating: 4.1,
                isFavorite: false,
                activeCardDiscount: false,
                cardStateAddingActive: true
            ), enumCardButtonNoActive: .small)
        }
    }
}

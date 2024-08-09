//
//  CardImageSection.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

enum EnumCardImageSizeSection: CGFloat {
    case big = 168
    case small = 148
    case little = 144
}


struct CardImageSection: View {
    var product: Product
    var enumCardImageSizeSection: EnumCardImageSizeSection
    var activeCardDiscount: Bool = true
    
    var body: some View {
        Image(product.imageName)
            .resizable()
            .frame(width: enumCardImageSizeSection.rawValue, height: enumCardImageSizeSection.rawValue)
            .overlay(alignment: .topLeading, content: {
                if activeCardDiscount {
                    Text(product.activeCardDiscount ? "Удар по ценам" : "Новинки")
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .foregroundStyle(.white)
                        .padding(.init(top: 2, leading: 12, bottom: 4, trailing: 6))
                        .background(
                            Rectangle()
                                .foregroundColor(product.activeCardDiscount ? Color.price : Color.new)
                                .clipShape(RoundedCornerShape(radius: 10, corners: [.bottomRight, .topLeft, .topRight]))
                        )
                }
            })
            .overlay(alignment: .bottomLeading, content: {
                if !product.activeCardDiscount {
                    HStack(spacing: 2.0) {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .frame(width: 12, height: 12)
                            .padding(2)
                        Text("\(product.rating, specifier: "%.1f")")
                            .font(.subheadline)
                            .padding(2)
                    }
                    .padding(.vertical, 2)
                    .padding(.horizontal, 4)
                }
            })
            .overlay(alignment: .bottomTrailing, content: {
                if product.activeCardDiscount {
                    Text("25%")
                        .font(.headline).bold()
                        .foregroundStyle(.red)
                        .padding(.horizontal, 2)
                }
            })
    }
}

#Preview {
    ZStack {
        Color.black.opacity(0.1).ignoresSafeArea()
        
        ScrollView {
            VStack {
                CardImageSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: true,
                        cardStateAddingActive: true
                    ),
                    enumCardImageSizeSection: .big,
                    activeCardDiscount: true
                )
                CardImageSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: true,
                        cardStateAddingActive: true
                    ),
                    enumCardImageSizeSection: .small,
                    activeCardDiscount: false
                )
                CardImageSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: true,
                        cardStateAddingActive: true
                    ),
                    enumCardImageSizeSection: .little,
                    activeCardDiscount: true
                )
            }
            VStack {
                CardImageSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: false,
                        cardStateAddingActive: true
                    ),
                    enumCardImageSizeSection: .big,
                    activeCardDiscount: true
                )
                CardImageSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: false,
                        cardStateAddingActive: true
                    ),
                    enumCardImageSizeSection: .small,
                    activeCardDiscount: false
                )
                CardImageSection(
                    product: Product(
                        name: "сыр Ламбер 500/0 230г",
                        price: 90.90,
                        imageName: "Image-0",
                        rating: 4.1,
                        isFavorite: false,
                        activeCardDiscount: false,
                        cardStateAddingActive: true
                    ),
                    enumCardImageSizeSection: .little,
                    activeCardDiscount: true
                )
            }
        }
    }
}



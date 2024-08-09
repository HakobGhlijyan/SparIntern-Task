//
//  CardButtonNoActive.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardButtonNoActive: View {
    @EnvironmentObject var viewModel: ProductViewModel
    var product: Product
    var enumPriceCardState: EnumPriceCardState
    
    var body: some View {
        HStack {
            VStack(spacing: 0.0) {
                HStack(spacing: 0.0) {
                    Text("\(product.price, specifier: "%.1f")")
                        .font(enumPriceCardState == .long ? .system(size: 20) : .system(size: 16)).bold()
                    Image("PerAmountIcon")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(1)
                }
                .frame(width: 81, height: 22)
                .frame(maxWidth: .infinity,alignment: .trailing)
                
                
                ZStack {
                    Rectangle()
                        .frame(width: 30, height: 1)
                    Text("199,0")
                        .font(.system(size: 12))
                }
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity,alignment: .leading)
                .frame(width: 67, height: 22)
                .padding(.leading, 4)
                .padding(.trailing, 10)

                
            }
            .frame(width: 81, height: 36)
            
            Spacer()

            Image(systemName: "cart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
                .foregroundStyle(.white)
                .frame(width: 48, height: 36)
                .background(.primary001)
                .clipShape(Capsule())
                .asButton(.press) {
                    viewModel.addProductCard(product: product)
                }

        }
        .frame(maxWidth: .infinity)
        .frame(height: 36)
        .padding(4)
        .background(.white)
    }
}

#Preview {
    ZStack {
        Color.black.opacity(0.1).ignoresSafeArea()
        VStack {
            //For Vertical
            CardButtonNoActive(
                product: Product(name: "сыр Ламбер 500/0 230г",
                                 price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
                enumPriceCardState: .long
            )
            //For Horizontal
            CardButtonNoActive(
                product: Product(name: "сыр Ламбер 500/0 230г",
                                 price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
                enumPriceCardState: .small
            )
        }
    }
    .environmentObject(ProductViewModel())
}

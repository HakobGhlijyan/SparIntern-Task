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
    var cardStateSize: Bool

    var body: some View {
        HStack(spacing: 20) {
            VStack(spacing: 0.0) {
                Text("\(product.price, specifier: "%.1f") P")
                    .font(cardStateSize ? .caption : .headline)
                    .frame(width: 77, alignment: .trailing)
                    .padding(.leading, 4)
                
                Group {
                    ZStack {
                        Rectangle()
                            .frame(width: 40, height: 1)
                        Text("199,0")
                            .font(cardStateSize ? .caption2 : .subheadline)
                            .font(.system(size: 12))
                    }
                }
                .foregroundStyle(.gray)
                .frame(width: 80, alignment: .leading)
            }
            
            Image(systemName: "cart.fill")
                .foregroundStyle(.white)
                .padding(10)
                .padding(.horizontal, 6)
                .background(.primary001)
                .clipShape(Capsule())
                .asButton(.press) {
                    viewModel.addProductCard(product: product)
                    print("card Add product")
                }
        }
    }
}

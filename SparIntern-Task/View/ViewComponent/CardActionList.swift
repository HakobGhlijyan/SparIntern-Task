//
//  CardActionList.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardActionList: View {
    @EnvironmentObject var viewModel: ProductViewModel
    var product: Product

    var body: some View {
        VStack(alignment: .trailing, spacing: 0.0) {
            Button(action: {
                viewModel.toggleCardState(for: product)
                print("Change Active state")
            }, label: {
                Image(systemName: "list.bullet.clipboard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .padding(8)
            })
            Button(action: {
                viewModel.toggleFavorite(for: product)
                print("heart IsFavorite")
            }, label: {
                Image(systemName: product.isFavorite ? "heart.fill" : "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .padding(8)
            })
            
        }
        .background(.ultraThickMaterial.opacity(0.6))
        .foregroundStyle(.black.opacity(0.5))
        .clipShape(RoundedCornerShape(radius: 10, corners: [.bottomLeft, .topRight]))
    }
}

#Preview {
    CardActionList(product: Product(name: "сыр Ламбер 500/0 230г", price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: true, cardStateAddingActive: true))
        .environmentObject(ProductViewModel())
}

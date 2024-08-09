//
//  ProductCard.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var viewModel: ProductViewModel
    var product: Product
    var cardState: Bool = false
    var actionListEnable: Bool = true

    var body: some View {
        if cardState {
            CardVertical(product: product, cardState: cardState)
        } else {
            CardHorizontal(product: product, actionListEnable: actionListEnable, cardState: cardState)
        }
    }
}


struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.opacity(0.1).ignoresSafeArea()
            
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
               cardState: true
            )
        }
        .environmentObject(ProductViewModel())
    }
}

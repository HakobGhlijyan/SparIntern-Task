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
            CardVertical(product: product)
        } else {
            CardHorizontal(product: product, actionListEnable: actionListEnable)
        }
    }
}

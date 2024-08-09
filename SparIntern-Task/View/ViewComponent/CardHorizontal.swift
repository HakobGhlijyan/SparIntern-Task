//
//  CardHorizontal.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardHorizontal: View {
    @EnvironmentObject var viewModel: ProductViewModel
    var product: Product
    var actionListEnable: Bool
    var cardState: Bool
    
    var body: some View {
        VStack {
            Divider()
            HStack {
//                CardImageSection(product: product, imageFrameSize: cardState ? 148 : 168, cardState: cardState)
                CardImageSection(product: product, cardState: cardState)
                CardInfoSection(product: product, cardState: product.cardStateAddingActive)
            }
        }
        .overlay(alignment: .topTrailing, content: {
            if actionListEnable {
                CardActionList(product: product)
            }
        })

    }
}

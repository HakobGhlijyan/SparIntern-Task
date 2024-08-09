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
    
    var body: some View {
        VStack {
            Divider()
            HStack {
                CardImageSection(product: product, imageFrameSize: 144)
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

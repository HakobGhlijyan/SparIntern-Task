//
//  CardInfoSection.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardInfoSection: View {
    @EnvironmentObject var viewModel: ProductViewModel
    var product: Product
    var cardState: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(product.name)
                .padding(.vertical, 8)
                .padding(.bottom, 20)
                .font(.system(size: 12))
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
                .lineLimit(4)
                .frame(width: 100)

            Spacer()
            
            if cardState {
                CardButtonNoActive(product: product, cardStateSize: viewModel.gridOrListView)
                    .padding(.bottom, 4)
            } else {
                CardButtonInActive(product: product)
                    .padding(.bottom, 4)
            }
        }
    }
}

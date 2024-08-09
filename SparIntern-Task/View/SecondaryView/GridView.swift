//
//  GridView.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

struct GridView: View {
    @EnvironmentObject var viewModel: ProductViewModel

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(viewModel.products) { product in
                    ProductCard(
                        product: product,
                        enumProductCard: .verticalCard,
                        actionListEnable: true,
                        enumCardImageSizeSection: .big
                    )
                }
            }
            .padding(4)
        }
        .scrollIndicators(.never)
    }
}

#Preview {
    GridView()
        .environmentObject(ProductViewModel())
}

//
//  ListView.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var viewModel: ProductViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(viewModel.products) { product in
                    ProductCard(
                        product: product,
                        enumProductCard: .horizontalCard,
                        actionListEnable: true,
                        enumCardImageSizeSection: .little
                    )
                        .padding(.bottom, 10)
                }
            }
        }
        .scrollIndicators(.never)
    }
}
#Preview {
    ListView()
        .environmentObject(ProductViewModel())
}

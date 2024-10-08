//
//  CardInProduct.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardInProduct: View {
    @EnvironmentObject var viewModel: ProductViewModel
    var cardState: Bool
    var enumCardVerticalState: EnumCardVerticalState
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.inCardProducts) { product in
                        ProductCard(
                            product: product,
                            enumProductCard: .horizontalCard,
                            actionListEnable: false,
                            enumCardImageSizeSection: .little,
                            enumCardVerticalState: .verticalChangeProduct
                        )
                    }
                }
            }
            
            Spacer()
            
            Text("Buy")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                .background(.primary001)
                .cornerRadius(10)
                .padding()
                .asButton(.press) {
                    //
                }
        }
    }
}


#Preview {
    CardInProduct(
        cardState: false,
        enumCardVerticalState: .verticalChangeProduct
    )
        .environmentObject(ProductViewModel())
}

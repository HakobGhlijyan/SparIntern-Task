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
                .padding(8)
                .font(.system(size: 12))
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity)

            Spacer()
            
            if cardState {
                VStack(spacing: 0.0) {
                    CardButtonInActiveVolume()
                        .opacity(!cardState ? 1 : 0)
                    CardButtonNoActive(product: product, cardStateSize: viewModel.gridOrListView)
                }
            } else {
                VStack(spacing: 0.0) {
                    CardButtonInActiveVolume()
                        .opacity(!cardState ? 1 : 0)
                    CardButtonInActive(product: product)
                }
            }
            
        }
        .frame(width: 168, height: cardState ? 110 : 130)
        .background(.white)
    }
}

 struct CardInfoSection_Previews: PreviewProvider {
     static var previews: some View {
         ZStack {
             Color.black.opacity(0.1).ignoresSafeArea()
             
             CardInfoSection(
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

//
//  CardButtonNoActive.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardButtonNoActive: View {
    @EnvironmentObject var viewModel: ProductViewModel
    var product: Product
    var cardStateSize: Bool
    
    var body: some View {
        HStack {
            VStack(spacing: 0.0) {
                HStack(spacing: 0.0) {
                    Text("\(product.price, specifier: "%.1f")")
                        .font(cardStateSize ? .system(size: 16) : .system(size: 20)).bold()
                    Image("PerAmountIcon")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(1)
                }
                .frame(width: 81, height: 22)
                .frame(maxWidth: .infinity,alignment: .trailing)
                
                
                ZStack {
                    Rectangle()
                        .frame(width: 30, height: 1)
                    Text("199,0")
                        .font(cardStateSize ? .caption2 : .subheadline)
                        .font(.system(size: 12))
                }
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity,alignment: .leading)
                .frame(width: 67, height: 22)
                .padding(.leading, 4)
                .padding(.trailing, 10)

                
            }
            .frame(width: 81, height: 36)
            
            Spacer()

            Image(systemName: "cart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
                .foregroundStyle(.white)
                .frame(width: 48, height: 36)
                .background(.primary001)
                .clipShape(Capsule())

        }
        .frame(width: 160, height: 36)
        .padding(4)
        .background(.white)
    }
}

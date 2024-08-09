//
//  CardButtonInActive.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardButtonInActive: View {
    var product: Product
    var kgCount: Double
    var moneyCount: Double
    
    var body: some View {
        HStack(spacing: 0.0) {
            Button(action: {
                print("minus")
            }, label: {
                Image(systemName: "minus")
                    .font(.headline)
                    .padding(6)
            })
            Spacer()
            VStack {
                Text("\(kgCount, specifier: "%.1f") kg")
                    .font(.system(size: 16))
                    .bold()
                Text("\(moneyCount, specifier: "%.1f") p")
                    .font(.system(size: 12))
                    .fontWeight(.light)
            }
            Spacer()
            Button(action: {
                print("plus")
            }, label: {
                Image(systemName: "plus")
                    .font(.headline)
                    .padding(6)
            })
        }
        .foregroundStyle(.white)
        .bold()
        .frame(height: 36)
        .frame(maxWidth: .infinity)
        .background(.primary001)
        .clipShape(RoundedCornerShape(radius: 20, corners: [.allCorners]))
        .padding(4)
    }
}

#Preview {
    ZStack {
        Color.black.opacity(0.1).ignoresSafeArea()
        CardButtonInActive(
            product: Product(name: "сыр Ламбер 500/0 230г",
                             price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
            kgCount: 0,
            moneyCount: 12.5
        )
    }
}

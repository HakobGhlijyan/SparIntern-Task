//
//  CardButtonInActive.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct CardButtonInActive: View {
    var product: Product
    var kgCount: Double = 0.0
    var moneyCount: Double = 12.50
    
    var body: some View {
        HStack {
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
        .padding(.vertical, 4)
        .frame(width: 160)
        .background(.primary001)
        .clipShape(RoundedCornerShape(radius: 20, corners: [.allCorners]))
    }
}

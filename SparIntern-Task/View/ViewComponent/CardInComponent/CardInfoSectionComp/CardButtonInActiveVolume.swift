//
//  CardButtonInActiveVolume.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 09.08.2024.
//

import SwiftUI

struct CardButtonInActiveVolume: View {
    var body: some View {
        HStack(spacing: 0.0) {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.clear)
                    .frame(height: 24)
                Text("Шт")
                    .foregroundStyle(.secondary)
                    .font(.system(size: 14))
                    .fontWeight(.medium)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.white)
                    .frame(height: 24)
                Text("Кг")
                    .foregroundStyle(.primary)
                    .font(.system(size: 14))
                    .fontWeight(.medium)
            }
        }
        .padding(2)
        .frame(maxWidth: .infinity)
        .background(.black.opacity(0.1))
        .clipShape(RoundedCornerShape(radius: 8, corners: [.allCorners]))
        .padding(4)
    }
}


#Preview {
    ZStack {
        Color.black.opacity(0.1).ignoresSafeArea()
        CardButtonInActiveVolume()
    }
}

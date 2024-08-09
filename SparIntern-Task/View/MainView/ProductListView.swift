//
//  ProductListView.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

struct ProductListView: View {
    @EnvironmentObject var viewModel: ProductViewModel

    var body: some View {
        VStack {
            if viewModel.gridOrListView {
                GridView()
            } else {
                ListView()
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    viewModel.toggleView()
                }) {
                    toolbarButton
                }
                .padding()
            }
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

#Preview {
    ProductListView()
        .environmentObject(ProductViewModel())
}

extension ProductListView {
    private var toolbarButton: some View {
        Image(viewModel.gridOrListView ? "iconGrid" : "iconList")
            .padding(12)
            .foregroundStyle(.primary001)
            .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(.surface002)
            )
    }
}

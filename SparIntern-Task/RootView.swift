//
//  ContentView.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var viewModel: ProductViewModel

    var body: some View {
        TabView(selection: .constant(1)) {
            NavigationStack {
                ProductListView()
                    .navigationTitle("Products")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label(
                    title: { Text("Magazine") },
                    icon: { Image(systemName: "list.bullet.clipboard.fill") }
                )
            }
            .tag(1)
            
            NavigationStack {
                CardInProduct(cardState: false, enumCardVerticalState: .verticalOnlyPrice)
                    .navigationTitle("Cards")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label(
                    title: { Text("Card") },
                    icon: { Image(systemName: "cart") }
                )
            }
            .tag(2)
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    RootView()
        .environmentObject(ProductViewModel())
}

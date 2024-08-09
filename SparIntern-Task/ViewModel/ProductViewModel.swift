//
//  ProductViewModel.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 07.08.2024.
//

import SwiftUI

@MainActor
final class ProductViewModel: ObservableObject {
    @Published var gridOrListView: Bool = true    
    @Published var isProductFavorite: Bool = false
    @Published var cardStateAddingActive: Bool = false
    @Published var cardIsFavorite: Bool = true

    @Published var products: [Product] = [
        Product(name: "сыр Ламбер 500/0 230г", 
                price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Энергетический Напит", 
                price: 99699.90, imageName: "Image-1", rating: 4.2, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Салат Овощной с Крабовыми Палочками", 
                price: 290, imageName: "Image-2", rating: 4.3, isFavorite: false, activeCardDiscount: true, cardStateAddingActive: true),
        Product(name: "Дорадо Охлажденная Непотрошеная 300-400г", 
                price: 390, imageName: "Image-3", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Ролл Маленькая Япония 216г", 
                price: 390, imageName: "Image-4", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Огурцы тепличные cадово-огородные", 
                price: 390, imageName: "Image-5", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Манго Кео", 
                price: 390, imageName: "Image-6", rating: 4.4, isFavorite: false, activeCardDiscount: true, cardStateAddingActive: true),
        Product(name: "Салат Овощной с Крабовыми Палочками",
                price: 390, imageName: "Image-7", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Салат Овощной с Крабовыми Палочками", 
                price: 390, imageName: "Image-8", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Масло Слобода Рафинированное 1,8л", 
                price: 390, imageName: "Image-9", rating: 4.4, isFavorite: false, activeCardDiscount: true, cardStateAddingActive: true),
        Product(name: "Салат Овощной с Крабовыми Палочками", 
                price: 390, imageName: "Image-10", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Макаронные Изделия SPAR Спагетти 450г", 
                price: 390, imageName: "Image-11", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Огурцы тепличные cадово-огородные", 
                price: 390, imageName: "Image-12", rating: 4.4, isFavorite: false, activeCardDiscount: true, cardStateAddingActive: true),
        Product(name: "Огурцы тепличные cадово-огородные", 
                price: 390, imageName: "Image-13", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true),
        Product(name: "Липа 300-400г", 
                price: 390, imageName: "Image-14", rating: 4.4, isFavorite: false, activeCardDiscount: false, cardStateAddingActive: true)
    ]
    
    @Published var inCardProducts: [Product] = [
        Product(name: "сыр Ламбер 500/0 230г", price: 90.90, imageName: "Image-0", rating: 4.1, isFavorite: false, activeCardDiscount: true, cardStateAddingActive: true)
    ]
    
    func toggleView() {
        gridOrListView.toggle()
    }
    
    func addProductCard(product: Product) {
        inCardProducts.append(product)
    }
    
    /// Функция, которая изменяет  cardStateAddingActive для продукта
    func toggleFavorite(for product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products[index].isFavorite.toggle()
        }
    }
    /// Функция, которая изменяет isFavorite  для продукта
    func toggleCardState(for product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products[index].cardStateAddingActive.toggle()
        }
    }
    
}

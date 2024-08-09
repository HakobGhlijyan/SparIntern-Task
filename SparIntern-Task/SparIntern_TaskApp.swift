//
//  SparIntern_TaskApp.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 09.08.2024.
//

import SwiftUI

@main
struct SparIntern_TaskApp: App {
    @StateObject private var viewModel = ProductViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                RootView()
            }
            .environmentObject(viewModel)
        }
    }
}

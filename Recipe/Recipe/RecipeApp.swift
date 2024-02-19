//
//  RecipeApp.swift
//  Recipe
//
//  Created by 전제윤 on 2/19/24.
//

import SwiftUI

@main
struct RecipeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

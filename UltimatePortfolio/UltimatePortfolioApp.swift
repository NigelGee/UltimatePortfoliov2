//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Nigel Gee on 17/02/2023.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    @State var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}

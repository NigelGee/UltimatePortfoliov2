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
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
            .onChange(of: scenePhase) { phase in
                if phase != .active {
                    dataController.save()
                }
            }
        }
    }
}

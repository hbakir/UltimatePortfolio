//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Hicham Bakir on 02.08.23.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
            
        }
    }
}

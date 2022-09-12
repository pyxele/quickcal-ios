//
//  QuickCalApp.swift
//  QuickCal
//
//  Created by Will Boland on 9/11/22.
//

import SwiftUI

@main
struct QuickCalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

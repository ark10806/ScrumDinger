//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by eigen.vector on 2023/08/30.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

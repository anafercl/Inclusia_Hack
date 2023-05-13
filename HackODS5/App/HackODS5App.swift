//
//  HackODS5App.swift
//  HackODS5
//
//  Created by Alumno on 11/05/23.
//

import SwiftUI

@main
struct HackODS5App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
             // ContentView()
            // .environment(\.managedObjectContext, persistenceController.container.viewContext)
            TabNavigationView()
        }
    }
}

//
//  knewsApp.swift
//  knews
//
//  Created by Vic Sukiasyan on 1/2/22.
//

import SwiftUI

@main
struct knewsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TopHeadlinesView()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

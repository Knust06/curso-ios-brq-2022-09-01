//
//  ProjVera_o2024App.swift
//  ProjVerão2024
//
//  Created by user226741 on 9/15/22.
//

import SwiftUI

@main
struct ProjVera_o2024App: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext )
        }
    }
}

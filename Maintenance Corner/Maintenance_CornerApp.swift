//
//  Maintenance_CornerApp.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-04-26.
//

import SwiftUI
import Firebase


@main

struct Maintenance_CornerApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }
    }
}

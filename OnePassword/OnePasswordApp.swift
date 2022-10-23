//
//  OnePasswordApp.swift
//  OnePassword
//
//  Created by zoya me on 10/23/22.
//

import SwiftUI

@main
struct OnePasswordApp: App {
    
    @StateObject var manager = PasswordManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(manager)
        }
    }
}


//
//  swiftuitodolistApp.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 4.12.2023.
//
import SwiftUI
import FirebaseCore

@main
struct swiftuitodolistApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

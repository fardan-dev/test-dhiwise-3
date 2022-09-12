//
//  Fardansapplication4App.swift
//  Fardansapplication4

import SwiftUI

@main
struct Fardansapplication4App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ButtonView()
        }
    }
}

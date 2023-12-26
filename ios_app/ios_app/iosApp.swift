//
//  iosApp.swift
//  iosApp
//
//  Created by A2 on 25/12/23.
//

import SwiftUI
import Flutter
import FlutterPluginRegistrant

class AppDelegate: FlutterAppDelegate, ObservableObject {
    let flutterEngine = FlutterEngine(name: "flutter_engine")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        flutterEngine.run();
        GeneratedPluginRegistrant.register(with: self.flutterEngine);

        return true;
    }
}

@main
struct iosApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

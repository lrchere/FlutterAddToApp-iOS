//
//  ContentView.swift
//  ios_app
//
//  Created by A2 on 25/12/23.
//

import SwiftUI
import Flutter

struct ContentView: View {
    @EnvironmentObject var appDelegate: AppDelegate

    var body: some View {
        VStack {
            Text("Hello from iOS/Swift Screen!")
            Button("Show Flutter Screen") {
                showFlutterScreen()
            }
        }
        .padding()
    }
    
    func showFlutterScreen() {
        guard
          let windowScene = UIApplication.shared.connectedScenes
            .first(where: { $0.activationState == .foregroundActive && $0 is UIWindowScene }) as? UIWindowScene,
          let window = windowScene.windows.first(where: \.isKeyWindow),
          let rootViewController = window.rootViewController
        else { return }


        let flutterViewController = FlutterViewController(
            engine: appDelegate.flutterEngine,
          nibName: nil,
          bundle: nil)
        flutterViewController.modalPresentationStyle = .overCurrentContext
        flutterViewController.isViewOpaque = false

        rootViewController.present(flutterViewController, animated: true)
      }
}

#Preview {
    ContentView()
}

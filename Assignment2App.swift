//
//  Assignment2App.swift
//  Assignment2
//
//  Created by Nhat Bui Minh on 10/08/2022.
//

import SwiftUI
import Firebase
@main
struct Assignment2App: App {
    @StateObject var gameSetting = GameSetting()
    var mediaPlayer = MediaPlayer()
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView().environmentObject(self.gameSetting)
                    .onAppear() {
                    mediaPlayer.playSound(resource: "bg", withExtension: "m4a")
                }
            }
        }
//        .windowResizability(.contentSize)
    }
}

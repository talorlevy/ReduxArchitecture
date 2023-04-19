//
//  ReduxDemoApp.swift
//  ReduxDemo
//
//  Created by Talor Levy on 4/19/23.
//

import SwiftUI

@main
struct ReduxDemoApp: App {
    var body: some Scene {
        WindowGroup {

            let appState = AppState()
            let reducer = Reducer()
            let store = Store(appState: appState, reducer: reducer)
            
            ContentView().environmentObject(store)
        }
    }
}

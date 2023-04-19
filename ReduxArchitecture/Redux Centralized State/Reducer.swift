//
//  Reducer.swift
//  ReduxDemo
//
//  Created by Talor Levy on 4/19/23.
//

import Foundation

class Reducer {
    func update(_ appState: inout AppState, _ action: Action) {
        switch action {
            case .increment:
                appState.counter += 1
        }
    }
}

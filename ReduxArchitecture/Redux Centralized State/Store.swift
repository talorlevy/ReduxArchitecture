//
//  Store.swift
//  ReduxDemo
//
//  Created by Talor Levy on 4/19/23.
//

import Foundation

class Store: ObservableObject {
    
    @Published var appState: AppState
    var reducer: Reducer
    
    init(appState: AppState, reducer: Reducer) {
        self.appState = appState
        self.reducer = reducer
    }
    
    func dispatch(_ action: Action) {
        self.reducer.update(&appState, action)
    }
}

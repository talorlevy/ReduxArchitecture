//
//  ContentView.swift
//  ReduxDemo
//
//  Created by Talor Levy on 4/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack {
            Text("\(store.appState.counter)")
                .padding()
            FancyCounter()
            Button("Increment") {
                store.dispatch(.increment)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let appState = AppState()
        let reducer = Reducer()
        let store = Store(appState: appState, reducer: reducer)
        
        return ContentView().environmentObject(store)
    }
}

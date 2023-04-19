//
//  FancyCounter.swift
//  ReduxDemo
//
//  Created by Talor Levy on 4/19/23.
//

import SwiftUI

struct FancyCounter: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack {
            Text("\(store.appState.counter)")
        }
    }
}

struct FancyCounter_Previews: PreviewProvider {
    static var previews: some View {
        FancyCounter()
    }
}

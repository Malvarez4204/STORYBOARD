//
//  ContentView.swift
//  Linkedpractice
//
//  Created by MAC on 04/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Text("Hello, world!")
            .padding()
            
        }
        HStack {
            Text("Hello, world!")
                .padding()
            Text("Hello, world!")
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Navigationviewa
//
//  Created by MAC on 06/07/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack {
        Text("Shrimp Chips in Stock")
          .font(.title)
          .padding()
          Image("28FFB2EF-6453-4747-81BB-6B5E183A4C86")
              .resizable()
              .scaledToFit()
              .frame(width: 300, height: 300)
        Spacer()
        NavigationLink(
          destination: ItemDetailView(itemName: "Shrimp Chips"),
          label: {
            Text("Add Shrimp Chips")
          })
        Spacer()
      }
      // Sets a navigation title of "Ligaya's Store"
      .navigationTitle(Text("Mike's Store"))
      // Sets the styling of the navigation title to inline
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

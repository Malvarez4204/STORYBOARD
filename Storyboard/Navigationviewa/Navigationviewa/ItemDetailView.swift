//
//  ItemDetailView.swift
//  Navigationviewa
//
//  Created by MAC on 06/07/22.
//

import SwiftUI

struct ItemDetailView: View {
  @State var quantityRemaining = Int.random(in: 1...10)
  let itemName: String
 
  var body: some View {
    VStack {
      Text("\(itemName)")
        .font(.title)
        .padding()
      Spacer()
      Image("FA7D921E-AFB6-44E7-B894-ED9D6808162C_4_5005_c")
        .font(.system(size: 200))
        .padding()
      Text("Quantity Remaining: \(quantityRemaining)")
      Spacer()
      Button {
        if quantityRemaining > 0 {
          quantityRemaining -= 1
        }
      } label: {
        Text("Add one to your cart")
      }
      Spacer()
    }
    // .background() runs the view below in the background
    .background(
      // The navigation link is not active until the quantity is 0
      NavigationLink(destination: Text("You bought all the Shrimp Chips"),
                     isActive: .constant(quantityRemaining == 0),
                     label: { EmptyView() })
      
    )
      
  }
}
struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Test Item")
    }
}

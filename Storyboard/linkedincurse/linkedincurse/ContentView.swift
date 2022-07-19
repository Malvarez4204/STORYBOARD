//
//  ContentView.swift
//  linkedincurse
//
//  Created by MAC on 05/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var red = 1.0
    @State var green = 0.0
    @State var blue = 0.5
    
    var body: some View {
        VStack{
            Text("Choose your favorite color")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(Color.blue)
        Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.light)
                .padding()
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: red, green: green, blue: blue, opacity: 1.0))
       
            ColorSlider(value: $red, color: .red)
            ColorSlider(value: $green, color: .green)
            ColorSlider(value: $blue, color: .blue)
            }
       }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

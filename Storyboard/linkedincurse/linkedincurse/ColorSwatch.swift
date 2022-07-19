//
//  ColorSwatch.swift
//  linkedincurse
//
//  Created by MAC on 05/07/22.
//

import SwiftUI

struct ColorSwatch: View {
    var color: Color
    var body: some View {
        Image(systemName: "circle.fill")
            .foregroundColor(color)
    }
}

struct ColorSwatch_Previews: PreviewProvider {
    static var previews: some View {
        ColorSwatch(color: .red)
    }
}

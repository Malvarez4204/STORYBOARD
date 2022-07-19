//
//  ImagePicker.swift
//  UIViewControllerRepresentableProject
//
//  Created by MAC on 07/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showImagePickerView = false
    var body: some View {
        VStack {
            Text("Choose an Image!")
                .font(.largeTitle)
                .padding()
            Spacer()
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    showImagePickerView = true
                }
                .padding()
            Spacer()
            Spacer()
        }
        .sheet(isPresented: $showImagePickerView) {
            Text("This will be an Image Picker view soon!")
        }
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker()
    }
}

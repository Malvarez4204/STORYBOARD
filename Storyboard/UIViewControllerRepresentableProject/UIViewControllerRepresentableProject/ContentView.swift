//
//  ContentView.swift
//  UIViewControllerRepresentableProject
//
//  Created by MAC on 07/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showImagePickerView = false
    @State private var selectedImage: UIImage?
    @State private var image = UIImage()
    
    var body: some View {
        VStack {
            Text("Choose an Image!")
                .font(.largeTitle)
                .padding()
            Spacer()
            imageView
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
            ImagePickerView()
        }
    }
    var imageView: Image {
        guard let selectedImage = selectedImage else {
            return Image(systemName: "photo")
        }
        return Image(uiImage: selectedImage)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

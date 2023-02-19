//
//  ImageLibrary.swift
//  Capstone
//
//  Created by Matthew Gayle on 2/1/23.
//

import SwiftUI
import Foundation
import UIKit

struct ImageCameraLibrary: UIViewControllerRepresentable{

    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
        var sourceType: UIImagePickerController.SourceType
            
        func makeUIViewController(context: Context) -> UIImagePickerController {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = self.sourceType
            return imagePicker
        }

        func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

        }

// Connecting the Coordinator class with this struct
    func makeCoordinator() -> ImageCameraLibraryCoordinator {
        return ImageCameraLibraryCoordinator(picker: self)
    }

}



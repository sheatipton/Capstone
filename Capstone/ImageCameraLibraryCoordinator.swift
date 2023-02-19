//
//  ImageCameraLibraryCoordinator.swift
//  Capstone
//
//  Created by Shea Tipton on 2/17/23.
//

import Foundation
import UIKit

class ImageCameraLibraryCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var picker: ImageCameraLibrary
    
    init(picker: ImageCameraLibrary) {
        self.picker = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        self.picker.selectedImage = selectedImage
        self.picker.isPresented.wrappedValue.dismiss()
    }
    
}

//
//  ImageLibrary.swift
//  Capstone
//
//  Created by Matthew Gayle on 2/1/23.
//

import SwiftUI
import Foundation
import UIKit

struct ImageLibrary: UIViewControllerRepresentable{

    func makeUIViewController(context: Context) -> some UIViewController {
        let imageLibrary = UIImagePickerController()
        imageLibrary.sourceType = .photoLibrary
        return imageLibrary
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}


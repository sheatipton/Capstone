//
//  Camera.swift
//  Capstone
//
//  Created by Shea Tipton on 2/17/23.
//

import SwiftUI
import FirebaseStorage

struct Camera: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
    @State var data: Data?


    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("take or upload a photo of ").font(.system(size: 20))
                    Text("the item you wish to donate").font(.system(size: 20))
                    
                    Spacer()
                        .frame(height: 80)
                    
                    if selectedImage != nil {
                        Image(uiImage: selectedImage!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 500, height: 500)
                        
                            .padding()
                        
                        Button {
                            
                        } label: {
                            Text("Upload")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }.buttonStyle(.bordered)
                        
                    }
                    else {
                        Image("ImagePlaceholder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                    }
                    
                    Spacer()
                        .frame(height: 70)
                    
                    HStack(spacing: 30) {
                        
                        Button {
                            self.sourceType = .camera
                            self.isImagePickerDisplay.toggle()
                        } label: {
                            Image(systemName: "camera.viewfinder")
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                        }
                        
                        Button {
                            self.sourceType = .photoLibrary
                            self.isImagePickerDisplay.toggle()
                        } label: {
                            Image(systemName: "photo")
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                        }
                    }
                }
                .sheet(isPresented: self.$isImagePickerDisplay) {
                    ImageCameraLibrary(selectedImage: self.$selectedImage, sourceType: self.sourceType)
                }
                .navigationBarTitle("Image Upload")
                .navigationBarTitleDisplayMode(.inline)
                
            }
        }
    }
    
    func uploadImage() {
       
        
    }
    
    
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        Camera()
    }
}

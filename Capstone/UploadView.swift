//
//  UploadView.swift
//  Capstone
//
//  Created by Shea Tipton on 2/19/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore

struct UploadView: View {
    
    @State var isShowingPictures = false
    @State var pickerPresented = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @ObservedObject var classifier: ImageClassifier
    
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Group {
                        if uiImage != nil {
                            Image(uiImage: uiImage!)
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 350)
                        }
                        else {
                            Image("ImagePlaceholder")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 350)
                        }
                    }
                    
                    Group {
                        if let imageClass = classifier.imageClass {
                            Spacer()
                                .frame(height: 5)
                            HStack{
                                Text("Item Scanned: ")
                                //.font(.caption)
                                    .font(.system(size:20))
                                    .foregroundColor(.black)
                                Text(imageClass)
                                    .bold()
                                    .font(.system(size:20))
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(height: 20)
                        } else {
                            Spacer()
                                .frame(height: 20)
                        }
                    }
                      
                    if uiImage != nil {
                        Spacer()
                            .frame(height: 15)
                        Button {
                            uploadPhoto()
                        } label: {
                            Text("Upload")
                                .font(.system(size: 18))
                                .foregroundColor(.white).bold()
                                .frame(minWidth: 0, maxWidth: 120, maxHeight: 50)
                                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(15.0)
                        }
                        Spacer()
                            .frame(height: 40)
                    }
                    
                    if uiImage == nil {
                        Text("take or upload a photo of ").font(.system(size: 20))
                        Text("the item you wish to donate").font(.system(size: 20))
                        Spacer()
                            .frame(height: 50)
                    } else {
                        Spacer()
                            .frame(height: 10)
                    }
                    
                    HStack(spacing: 30) {
                        
                        Button {
                            pickerPresented = true
                            sourceType = .camera
                        } label: {
                            Image(systemName: "camera.viewfinder")
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                        }
                        
                        Button {
                            pickerPresented = true
                            sourceType = .photoLibrary
                        } label: {
                            Image(systemName: "photo")
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                        }
                    }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination: ImagesView()) {
                            Image(systemName: "photo.on.rectangle.angled")
                                .font(.system(size: 40))
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Profile()) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 40))
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            
            .sheet(isPresented: $pickerPresented, onDismiss: nil) {
                ImagePicker(uiImage: $uiImage, pickerPresented: $pickerPresented,sourceType: $sourceType)
                    .onDisappear{
                        if uiImage != nil {
                            classifier.detect(uiImage: uiImage!)
                        }
                    }
            }
        }
    }
    
    func uploadPhoto() {
        
        guard uiImage != nil else {
            return
        }
        
        let storageRef = Storage.storage().reference()
        
        let imageData = uiImage!.jpegData(compressionQuality: 0.8)
        
        guard imageData != nil else {
            return
        }
        let path = UUID().uuidString
        let fileRef = storageRef.child("images/\(path).jpg")
        
        let uploadTask = fileRef.putData(imageData!, metadata: nil) {
            metadata,error in
            
            if error == nil && metadata != nil {
                let db = Firestore.firestore()
                db.collection("images").document().setData(["imgPath":path]) { error in
                    if error == nil {
                        DispatchQueue.main.async {
                            //retrievedImages.append(self.uiImage!)
                            ImagesView().appendImage(image: self.uiImage!)
                        }
                    }
                }
            }
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView(classifier: ImageClassifier())
    }
}

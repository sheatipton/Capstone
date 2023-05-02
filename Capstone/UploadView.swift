//
//  UploadView.swift
//  Capstone
//
//  Created by Shea Tipton on 2/19/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore
import FirebaseAuth
import FirebaseFirestoreSwift

struct UploadView: View {
    
    // Popover Screens
    @State var isShowingPictures = false
    @State var pickerPresented = false
    @State var isShowingHelp = false
    
    // Images
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @ObservedObject var classifier: ImageClassifier
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    @State var imageString: String?
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack {
                      
                        Group {
                            if uiImage != nil {
                                Image(uiImage: uiImage!)
                                    .resizable()
                                    .scaledToFit()
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                                    .frame(width: 350, height: 420)
                                    
                            }
                            else {
                                Image("ImagePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                                    .frame(width: 350, height: 450)
                            }
                        }
                        
                        Group {
                            if let imageClass = classifier.imageClass {
                                Spacer()
                                    .frame(height: 20)
                                HStack{
                                    Text("Item Scanned: ")
                                        .font(Font.custom("Circe", size: 20))
                                        .foregroundColor(.black)
                                    // matthew : can you upload this ai generated description into the "item" table in the database
                                    Text(imageClass)
                                        .bold()
                                        .font(Font.custom("Circe", size: 20))
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                                .onAppear{
                                    self.imageString = imageClass
                                }
                                Spacer()
                                    .frame(height: 20)
                            } else {
                                Spacer()
                                    .frame(height: 10)
                            }
                        }
                        
                        // photo chosen
                        if uiImage != nil {
                            Spacer()
                                .frame(height: 15)
                            
                            NavigationLink(destination: ItemDescription(uiImage: uiImage, imageString: imageString).navigationBarBackButtonHidden(true).simultaneousGesture(TapGesture().onEnded {
                                //uploadPhoto()
                            })) {
                                Text("Upload")
                                    .font(Font.custom("Circe", size: 20))
                                    .foregroundColor(.white).bold()
                                    .frame(width: 120, height: 50)
                                    .background(Color(red: 196/255, green: 87/255, blue: 47/255))
                                    .cornerRadius(15.0)
                            }
                            
                            Spacer()
                                .frame(height: 35)
                        }
                        
                        Spacer()
                            .frame(height: 10)
                        
                        
                        HStack(spacing: 30) {
                            
                            Button {
                                pickerPresented = true
                                sourceType = .camera
                            } label: {
                                Image(systemName: "camera.viewfinder")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                            }
                            
                            Button {
                                pickerPresented = true
                                sourceType = .photoLibrary
                            } label: {
                                Image(systemName: "photo")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                            }
                        }
                        Spacer()
                            .frame(height: 40)
                        
                        HStack {
                            
                            Button {
                                isShowingHelp = true
                            } label: {
                                HStack {
                                    Text("Help")
                                        .font(Font.custom("Norwester", size: 24)).foregroundColor(.black)
                                    Image(systemName: "info.circle.fill")
                                        .font(.system(size: 35)).foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                                        .padding(.leading, 10)
                                }
                            }
                        }
                        .padding(10)
                        .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                        
                        Spacer()
                    }
                    
                    // toolbar
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: ImagesView().navigationBarBackButtonHidden(true)) {
                                Image(systemName: "photo.on.rectangle.angled")
                                    .font(.system(size: 30)).foregroundColor(.black)
                            }
                        }
                        
                        
                        ToolbarItem() {
                            NavigationLink(destination: ImagesView().navigationBarBackButtonHidden(true)) {
                                Image("FawnLogo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 210)
                                    .offset(x: -10, y: 5)
                            }
                        }
                        
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavigationLink(destination: DonorProfile().navigationBarBackButtonHidden(true)) {
                                Image(systemName: "person.circle")
                                    .font(.system(size: 30)).foregroundColor(.black)
                            }
                        }
                    } // end toolbar
                }
                
                // help popover
                .popover(isPresented: $isShowingHelp) {
                    
                    Image("FawnLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .padding(.top, 40)
                        .padding(.bottom, 15)
                    Text("Upload Tips")
                        .font(Font.custom("Norwester", size: 35))
                        .padding(.bottom, 20)
                    
                    VStack {
                        Text("To get started, take or upload a clear photo of the item you want to donate.")
                            .padding(.bottom, 5)
                            
                        Text("Fawn will use AI to analyze your item and provide you with a description.")
                            .padding(.bottom, 5)
                        
                        Text("If the description is inaccurate, try using a photo with brighter lighting or at a different angle.")
                            .padding(.bottom, 5)
                        
                    }.font(Font.custom("Circe", size: 25))
                        .padding([.leading, .trailing], 35)
                        
                    
                    Spacer()
                    
                }.onDisappear {
                    isShowingHelp = false
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
                if let user = Auth.auth().currentUser {
                    
                    let dataToUpdate: [String: Any] = [
                        "images": FieldValue.arrayUnion([path])
                    ]
                    
                    db.collection("Users").document(user.uid  ).setData(dataToUpdate, merge: true) { error in
                        if error == nil {
                            print("no error")
                        } else {
                            print("error")
                            
                        }
                    }
                }
            }
        }
    } // uploadPhoto()
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView(classifier: ImageClassifier())
    }
}

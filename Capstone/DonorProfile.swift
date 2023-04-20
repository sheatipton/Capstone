//
//  DonorProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/13/23.
//

import SwiftUI
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore
import FirebaseStorage

struct DonorProfile: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var selected = 0
    @State private var fullName = "Shea Tipton"
    @State private var username = "set58568"
    @State private var pickerPresented = false
    @State private var selectedImage: UIImage?
    @State private var images: [UIImage] = []
    @State private var isImageMagnified: Bool = false
    private var gridItems: [GridItem] {
        Array(repeating: .init(.flexible()), count: 3)
    }
    //private var defaultProfileimg = UIImage(named:"ProfilePlaceholder")
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    // matthew pull these vars
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Profile")
                        .font(Font.custom("Norwester", size: 35))
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                    HStack {
                        
                        
                        Image(uiImage: selectedImage ?? defaultProfileImg(image: "ProfilePlaceholder"))
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                            .frame(width: 140, height: 140, alignment: .center)
                            .offset(x: -50, y: 0)
                            .onTapGesture {
                                pickerPresented = true
                            }
                        
                        Spacer()
                            .frame(width: 20)
                        VStack {
                            Text(fullName)
                                .font(Font.custom("Circe", size: 25))
                            
                            
                            Text(username)
                                .font(Font.custom("Circe", size: 25))
                        }
                        
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("Image Uploads")
                        .font(Font.custom("Circe", size: 25))
                        .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Picker("Image Uploads", selection: $selected) {
                        //Text("Currently Needed").tag(0)
                        Text("Pending Donation").tag(0)
                            .font(Font.custom("Circe", size: 30))
                        Text("Donated").tag(1)
                            .font(Font.custom("Circe", size: 30))
//                        Text("Donated").tag(2)
//                            .font(Font.custom("Circe", size: 30))
                    }
                    .pickerStyle(.segmented)
                    .frame(height: 60)
                    .scaleEffect(CGSize(width: 1, height: 1))
                    .scaledToFit()
                    
//                    if (selected == 0) {
//                        Text("Item(s) currently needed")
//                    }
//
//                    if (selected == 1) {
//                        VStack {
//                            Text("Item(s) Not Currently Needed")
//                            Text("We will notify you when an organization needs your item")
//                        }
//                    }
//
//                    if (selected == 2) {
//                        Text("Previously Donated Items")
//                    }
                    ScrollView {
                        LazyVGrid(columns: gridItems, spacing: 20) {
                            ForEach(images, id: \.self) { image in
                                Image(uiImage: image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
                                    .clipped()
                                    .overlay(
                                        Rectangle()
                                            .stroke(Color.white, lineWidth: 3) // Add a white border with 1 point width
                                    )
                            }
                        }
                    }
                    
                    Spacer()
                    
                }
                .padding(15)
                .sheet(isPresented: $pickerPresented, onDismiss: nil) {
                    ImagePicker(uiImage: $selectedImage, pickerPresented: $pickerPresented, sourceType:$sourceType)
                        .onDisappear {
                            
                            uploadImage()
                        }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                            
                        } label: {
                            Image(systemName: "arrow.uturn.backward")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ProfileSettings().navigationBarBackButtonHidden()) {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 30))
                                .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                            
                        }
                    }
                }
            }
        }
        .onAppear{
            updateCredentials()
        }
    }
    func updateCredentials() {
        var imagePaths: [String] = []
        if let user = Auth.auth().currentUser {
            let db = Firestore.firestore()
            
            let docRef  = db.collection("Users").document(user.uid)
            docRef.getDocument(as: User.self) { result in
                
                switch result {
                    case .success(let user):
                    self.fullName = user.name ?? ""
                    self.username = user.userName ?? ""
                    imagePaths = user.images ?? []
                    let storageRef = Storage.storage().reference()
                    if user.profileimg != nil {
                        let fileRef = storageRef.child("images/\(  user.profileimg as! String).jpg")
                        
                        fileRef.getData(maxSize: 5 * 1024 * 1024) { data, error in
                            if error == nil && data != nil {
                                if let image = UIImage(data: data!) {
             
                                        self.selectedImage = image

                                }
                            }
                        }
                    }
                    for apath in imagePaths {
                        let fileRef = storageRef.child("images/\(apath as! String).jpg")
                        
                        fileRef.getData(maxSize: 5 * 1024 * 1024) { data, error in
                            if error == nil && data != nil {
                                if let image = UIImage(data: data!) {
             
                                    images.append(image)

                                }
                            }
                        }
                        
                    }
                    
                    
                case .failure(let error):
                        print("error\(error)")
                }
                
            }
            
            
        } else {
            print("no user is signed in ")
        }
        
    }
    
    
    func uploadImage() {
        guard selectedImage != nil else {
            return
        }
        
        let storageRef = Storage.storage().reference()
        
        let imageData = selectedImage!.jpegData(compressionQuality: 0.8)
        
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
                    db.collection("Users").document(user.uid).setData(["profileimg":path], merge: true) { error in
                        if error == nil {
                            DispatchQueue.main.async {
                                //retrievedImages.append(self.uiImage!)
                            }
                        }
                    }// under here
                }
            }
        }
        
    }
    private func defaultProfileImg(image:String) -> UIImage {
        // Set default profile image here
        return UIImage(named: image) ?? UIImage()
    }
}

struct DonorProfile_Previews: PreviewProvider {
    static var previews: some View {
        DonorProfile()
            .environmentObject(AuthState())
    }
}


//
//  ImagesView.swift
//  Capstone
//
//  Created by Shea Tipton on 2/19/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore

struct ImagesView: View {
    @State var retrievedImages = [UIImage]()
    
    var body: some View {
        
        NavigationView {
        
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                ScrollView(.vertical) {
                    Spacer()
                        .frame(height: 40)
                    
                    VStack {
      
                        Text("Uploaded Images")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle).bold()
                            .padding(.leading, 25)
                        
                        ForEach(retrievedImages, id: \.self) { image in
                            Image(uiImage: image)
                                .resizable()
                                .frame(width: 200, height: 200)
                        }
                    }
                    .onAppear {
                        retrievePhotos()
                    }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ImagesView()) {
                            Image(systemName: "photo.on.rectangle.angled")
                                .font(.system(size: 35))
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination: Profile()) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 35))
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
    func retrievePhotos() {
        let db = Firestore.firestore()
        
        db.collection("images").getDocuments { snapshot, error in
            
            if error == nil && snapshot != nil {
                var paths = [String]()
                for doc in snapshot!.documents {
                    paths.append(doc["imgPath"] as! String)
                }
                for path in paths {
                    
                    let storageRef = Storage.storage().reference()
                    let fileRef = storageRef.child("images/\(path).jpg")
                    print ("this is my path \(path)")
                    fileRef.getData(maxSize: 5 * 1024 * 1024) { data, error in
                        if error == nil && data != nil {
                            if let image = UIImage(data: data!) {
                                DispatchQueue.main.async {
                                    appendImage(image: image)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    func appendImage(image: UIImage) {
        print("code executed matt!")
        DispatchQueue.main.async {
            self.retrievedImages.append(image)
        }
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}

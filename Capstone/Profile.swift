//
//  Profile.swift
//  Capstone
//
//  Created by Shea Tipton on 2/16/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore

struct Profile: View {
    @State var retrievedImages = [UIImage]()
    var body: some View {
        
        ScrollView(.vertical) {
            VStack {
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

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

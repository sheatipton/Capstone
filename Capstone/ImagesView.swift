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
    
    @Environment(\.dismiss) private var dismiss
    
    @State var retrievedImages = [UIImage]()
    
    var body: some View {
        
        NavigationView {
        
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                ScrollView(.vertical) {
                    Spacer()
                        .frame(height: 30)
                    
                    VStack {
                        
                        Text("Uploaded Items")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.largeTitle).bold()
                        
                        
                        ForEach(retrievedImages, id: \.self) { image in
                            NavigationLink(destination: ItemView()) {
                                Image(uiImage: image)
                                    .resizable()
                                    .frame(width: 200, height: 200)
                                    .padding()
                            }
                        }
                    }
                    .onAppear {
                        retrievePhotos()
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
                }
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

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}

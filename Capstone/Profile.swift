//
//  Profile.swift
//  Capstone
//
//  Created by Shea Tipton on 2/16/23.
//

import SwiftUI
//
import FirebaseStorage
import FirebaseFirestore
//
import MapKit

struct Profile: View {
    //
    @State var retrievedImages = [UIImage]()
    //
    var body: some View {
        
//
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
//
        NavigationView {
            
            VStack {
                
                ZStack {
                    Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 33.9599, longitude: -83.378), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))), interactionModes: [])
                        .frame(width: .infinity, height: 200)
                        .ignoresSafeArea()
                    
                    
                    Image("ProfilePlaceholder")
                        .resizable()
                        .clipped()
                        .frame(width: 130, height: 130, alignment: .center)
                        .offset(x: -150, y: 53)
                    
                    Text("Nonprofit")
                        .font(.system(size: 25)).bold()
                        .offset(x: 50, y: 90)
                
                }
                
                Form {
                    
                    Section(header: Text("Location")) {
                     Text("123 Spring Street")
                      Text("City, State 12345")
                    }
                    
                    Section(header: Text("About")) {
                     Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    }
                    
                    Section(header: Text("Looking for...")) {
                     Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    }
                    
                    Section(header: Text("Contact")) {
                     Text("1-800-545-GIVE")
                    }
                      
                }
            }
        }.navigationBarTitle(Text("Profile"))
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

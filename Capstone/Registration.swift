//
//  Registration.swift
//  Capstone
//
//  Created by Matthew Gayle on 3/15/23.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseFirestore

func registerDonor(email:String, password:String, userName: String, fullName: String) {
    
    Auth.auth().createUser(withEmail: email, password: password) { result, error in
        if error != nil {
            print(error!.localizedDescription)
        }
        
        let db = Firestore.firestore()
        let user = Auth.auth().currentUser
        if let user = user {
            let uid = user.uid
            let userObj = User(uid: uid,
                            name: fullName,
                            userName: userName,
                            role: "donor",
                            profileimg: "ProfilePlaceholder",
                            images: []
                            
                            
                            
            )
            do {
                try db.collection("Users").document(uid).setData(userObj.dictionary)
            } catch let error {
                print("Error writing city to Firestore: \(error)")
            }
            
        }
        
        
//        db.collection("Users").document("Donors").setData([
//            "fullName": fullName,
//            "username": userName,
//            "role": "donor",
//        ]) { err in
//            if let err = err {
//                print("Error writing document: \(err)")
//            } else {
//                print("Document successfully written!")
//            }
//        }
    
    }
}



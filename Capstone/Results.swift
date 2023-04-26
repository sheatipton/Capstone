//
//  Results.swift
//  Capstone
//
//  Created by Shea Tipton on 3/14/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase

struct Results: View {
    
    @Environment(\.dismiss) private var dismiss
    
    
    // create results array
    @State public var item: String
    @State public var matchedNonprofits: [Nonprofit] = []
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack {
                        // if no results
                        /*Text("There are no organizations accepting that item right now.")
                         .font(Font.custom("Norwester", size: 35))
                         
                         Spacer()
                         .frame(height: 20)
                         
                         Text("We will notify you when an organization is in need of that item.")
                         .font(Font.custom("Norwester", size: 35))
                         
                         Spacer()
                         .frame(height: 50)
                         */
                        
                        
                        // if results array != nil
                        
                        Spacer()
                            .frame(height: 20)
                        
                        VStack {
                            VStack {
                                Text("Results")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(Font.custom("Norwester", size: 35))
                                
                                Spacer()
                                    .frame(height: 40)
                                
                                Text("Organizations currently")
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                                Text("accepting the item(s):")
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                                
                                Spacer()
                                    .frame(height: 40)
                            }
                            
                            // matthew : same concept as tag view page
                            // start code
                            if matchedNonprofits.count > 0 {
                                ForEach(matchedNonprofits) { np in
                                    NavigationLink(destination: NonprofitProfile(name: np.name!, items: np.items!,aboutUs: np.aboutUs!, address: np.address!, site: np.site!, profileImg: np.profileImg!, operationHours:np.operationHours!)
                                        .navigationBarBackButtonHidden(true)) {
                                            HStack {
                                                Text(np.name!).bold()
                                                    .font(Font.custom("Circe", size: 24))
                                                    .foregroundColor(Color.black)
                                                //.offset(x: -75)
                                                Image(systemName: "arrow.forward")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 20))
                                                // .offset(x: -75)
                                            }
                                        }
                                    
                                    Spacer()
                                        .frame(height: 20)
                                }
                                // end code
                                
                                //                            NavigationLink(destination: NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                //                                .navigationBarBackButtonHidden(true)) {
                                //                                HStack {
                                //                                    Text("ACCA").bold()
                                //                                        .font(Font.custom("Circe", size: 24))
                                //                                        .foregroundColor(Color.black)
                                //                                    //.offset(x: -75)
                                //                                    Image(systemName: "arrow.forward")
                                //                                        .foregroundColor(.black)
                                //                                        .font(.system(size: 20))
                                //                                    //.offset(x: -75)
                                //                                }
                                //                            }
                                //
                                //                            Spacer()
                                //                                .frame(height: 20)
                                //
                                //                            NavigationLink(destination: NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                //                                .navigationBarBackButtonHidden(true)) {
                                //                                HStack {
                                //                                    Text("Acceptance Recovery Center").bold()
                                //                                        .font(Font.custom("Circe", size: 24))
                                //                                        .foregroundColor(Color.black)
                                //
                                //                                    Image(systemName: "arrow.forward")
                                //                                        .foregroundColor(.black)
                                //                                        .font(.system(size: 20))
                                //                                    //.offset(x: -75)
                                //                                }
                                //                            }
                                //
                                //                            Spacer()
                                //                                .frame(height: 70)
                            } else {
                                Text("There are no organizations accepting that item right now.")
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(Color.black)
                            }
                            
                            Spacer()
                                .frame(height: 20)
                            
                            //                             Text("We will notify you when an organization is in need of that item.")
                            //                                .font(Font.custom("Circe", size: 22))
                            //                                .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                            NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                                Text("Browse Organizations")
                                    .frame(minWidth: 170,  maxWidth: 220, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            }
                            
                            Spacer()
                                .frame(height: 50)
                            
                            NavigationLink(destination: TagListView().navigationBarBackButtonHidden(true)) {
                                Text("Browse Tags")
                                    .frame(minWidth: 170,  maxWidth: 220, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            }
                            
                            
                        }
                        Spacer()
                    }
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                dismiss()
                                
                            } label: {
                                Image(systemName: "arrow.uturn.backward")
                                    .font(.system(size: 22))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            .onAppear {
                matchItem()
            }
        }
    }
        func matchItem() {
            let db = Firestore.firestore()
            let collectionRef = db.collection("Nonprofits")
            
            collectionRef.getDocuments() { (querySnapshot, error) in
                if error == nil {
                    let filterDocuments = querySnapshot!.documents.filter { document in
                        guard let items = document.get("items") as? [String] else {
                            return false
                        }
                        return items.contains { items in
                            return items.contains(item.lowercased())
                        }
                        
                    }
                    DispatchQueue.main.async {
                        
                        self.matchedNonprofits = filterDocuments.map { d in
                            
                            return Nonprofit(
                                nid: d["nid"] as? String ?? "",
                                name: d["name"] as? String ?? "",
                                items: d["items"] as? [String] ?? [],
                                headline: d["headline"] as? String ?? "",
                                headlineImage: d["headlineImage"] as? String ?? "",
                                aboutUs: d["aboutUs"] as? String ?? "",
                                address: d["address"] as? String ?? "",
                                site: d["site"] as? String ?? "",
                                profileImg: d["profileImg"] as? String ?? "",
                                operationHours: d["operationHours"] as? String ?? ""
                            )
                        }
                        
                    }
                    
                    
                    
                } else {
                    
                }
                
                
            }
            
            //        let query = collectionRef.whereField("items", arrayContains: item)
            
            // Execute the query
            //        query.getDocuments() { (querySnapshot, error) in
            //            if error == nil {
            //                if let querySnapshot = querySnapshot {
            //
            //                    DispatchQueue.main.async {
            //
            //                        self.matchedNonprofits = querySnapshot.documents.map { d in
            //
            //                            return Nonprofit(
            //                                nid: d["nid"] as? String ?? "",
            //                                name: d["name"] as? String ?? "",
            //                                items: d["items"] as? [String] ?? [],
            //                                headline: d["headline"] as? String ?? "",
            //                                headlineImage: d["headlineImage"] as? String ?? "",
            //                                aboutUs: d["aboutUs"] as? String ?? "",
            //                                address: d["address"] as? String ?? "",
            //                                site: d["site"] as? String ?? "",
            //                                profileImg: d["profileImg"] as? String ?? "",
            //                                operationHours: d["operationHours"] as? String ?? ""
            //                            )
            //                        }
            //
            //                    }
            //                }
            //            } else {
            //
            //            }
            //
            //
            //        }
            
        }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        Results(item: "water bottle")
    }
}

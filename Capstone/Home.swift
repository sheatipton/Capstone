//
//  Home.swift
//  Capstone
//
//  Created by Shea Tipton on 2/15/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase

struct Home: View {
    @State var mybool = false
    @State var NonprofitList = [Nonprofit]()
    @EnvironmentObject private var authState: AuthState
    //@State private var conditionView : AnyView?
    var body: some View {
        
        NavigationView {
         
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    Spacer()
                        .frame(height: 20)
                    
                    VStack {
                        //Text(authState.isUserAuthenticated ? "User is authenticated" : "User is not authenticated")
                        
                        // create for each using all nonprofit accounts in our database
                        ForEach(NonprofitList) { np in
                            
                            
                            HStack {
                                NavigationLink(destination: NonprofitProfile(name: np.name!, items: np.items!,aboutUs: np.aboutUs!, address: np.address!, site: np.site!, profileImg: np.profileImg!, operationHours:np.operationHours!)
                                    .navigationBarBackButtonHidden(true)) {
                                        AsyncImage(url: URL(string: np.profileImg!), content: { img in
                                            HStack {
                                                img
                                                    .resizable()
//                                                    .scaledToFit()
                                                    .clipShape(Circle())
                                                    .padding()
                                                   
                                                    .frame(width: 100, height: 100)
                                                
                                                Text(np.name!)
                                                    .font(Font.custom("Circe-Bold", size: 25)).bold()
                                                    .foregroundColor(.black)
                                                    .offset(x: -5, y: 0)
                                                
                                            }
                                            .padding(.leading, 20)
                                            
                                        }, placeholder: {
                                            
                                        }  )
                                        
                                }
                                
//                                Text(np.name!)
//                                    .font(Font.custom("Norwester", size: 25)).bold()
                                
                                Spacer()
  
                            }
                            
                            NavigationLink( destination: PostView(postImage: np.headlineImage!, postCreator: np.name!, postContent: np.headline! ).navigationBarBackButtonHidden(true)) {
                                VStack {
                                    Text(np.headline!)
                                        .padding([.leading, .trailing], 20)
                                    //                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 1.5)
                                        .foregroundColor(.black)
                                        .font(Font.custom("Circe", size: 20))
                                        .padding(.leading, 20)
                                        .padding(.trailing, 20)
                                        .padding(.bottom, 10)
                                        .multilineTextAlignment(.leading)
                                    
                                    AsyncImage(url: URL(string: np.headlineImage!), content: { img in
                                        img
                                            .resizable()
                                            .clipped()
                                            .scaledToFit()
                                            .frame(width: 350, height: 250, alignment: .center)
                                    }, placeholder: {
                                        
                                    }  )

                                    
                                }
                            }
                        }
                    }
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 35)
                        Divider()
                        Spacer()
                            .frame(height: 30)
                        Text("You're all caught up!")
                            .font(Font.custom("Circe", size: 30))
                            .padding(.top, 30)
                        Spacer()
                            .frame(height: 25)
                        Image(systemName: "checkmark")
                            .font(.system(size: 35))
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        Spacer()
                            .frame(height: 50)
                    }
                }
                
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ImagesView().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "photo.on.rectangle.angled")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
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
                        
                        NavigationLink(destination: setProfileIconDest(auth: authState.isUserAuthenticated)
                            .navigationBarBackButtonHidden(true)) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                  
                        
                    } // toolbar
                }
//                .onAppear {
//                    conditionView = setProfileIconDest(auth: authState.isUserAuthenticated) as! AnyView
//                }
            }
        }
        .onAppear {
            retrieveNonprofits()
            
        }

    }
    func retrieveNonprofits() {
        let db = Firestore.firestore()
        
        db.collection("Nonprofits").getDocuments() { snapshot, error in
            if error == nil {
                if let snapshot = snapshot {
                    
                    DispatchQueue.main.async {
                        
                        self.NonprofitList = snapshot.documents.map { d in
                            
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
                }
            } else {

            }
            
        }

    }
    
}


@ViewBuilder
func setProfileIconDest(auth: Bool) -> some View {
   
        if auth {
            // User is signed in.
            // ...
            DonorProfile()

        } else {
            // No user is signed in.
            Login()
        }
    
    
}

func checkAuthState()  ->  Bool {
    var myVar = false
    Auth.auth().addStateDidChangeListener { auth, user in
        // ...
        if user != nil {
            myVar = true
            // User is signed in. Show home screen
            
        } else {
            // No User is signed in. Show user the login screen
            myVar = false
        }
        
    }
    
    return myVar
    
}

struct Home_Previews: PreviewProvider {
    @EnvironmentObject private var authState: AuthState
    static var previews: some View {
        Home()
            .environmentObject(AuthState())
    }
}

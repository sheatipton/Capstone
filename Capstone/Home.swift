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

struct Home: View {
    @State var mybool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    
<<<<<<< HEAD
                    NavigationLink(destination: Home().navigationBarBackButtonHidden(true)) {
                        Image("FawnLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                            .offset(x: -7, y: -15)
                    }
=======
                    Image("FawnLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .offset(x: 0, y: -15)
>>>>>>> 20117b083a2c8d23972d35c2ec4bdc743778a73b
                    
                    Spacer()
                        .frame(height: 10)
                    
                    VStack {
                        
                        // create for each using all nonprofit accounts in our database
                        
                        HStack {
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                            }
                            
                            Text("Project Hope")
                                .font(Font.custom("Norwester", size: 25)).bold()
                            
                            Spacer()
                        }
                        
                        NavigationLink(destination: PostView().navigationBarBackButtonHidden(true)) {
                            Text("Help after the Hurricane! Project HOPE is taking donations for...")
                                .padding(30)
                                .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 1.5)
                                .foregroundColor(.black)
                                .font(Font.custom("Circe", size: 20))
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 10)
                        }
                        
                        HStack {
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                
                                
                                Text("Athens Humane Society")
                                    .font(Font.custom("Norwester", size: 25)).bold()
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                        }
                        
                        NavigationLink(destination: PostView().navigationBarBackButtonHidden(true)) {
                            Text("Now until December 31 we are offering FREE adult dog adoptions!")
                            //The Humane Society’s Athens location is at capacity, so adopt a pup today to bring them to a home for the holidays.")
                                .padding(30)
                                .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 1.5)
                                .foregroundColor(.black)
                                .font(Font.custom("Circe", size: 20))
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 10)
                        }
                        
                        HStack {
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                
                                Text("Toys for Tots")
                                    .font(Font.custom("Norwester", size: 25)).bold()
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                        }
                        
                        NavigationLink(destination: PostView().navigationBarBackButtonHidden(true)) {
                            Text("Help ensure every child gets a gift this Christmas!")
                            //Toys for Tots is providing a toy drive from now until December 24 at our Athens location. Drop off new and used toys to make a positive impact on the children who need it most in the community!")
                                .padding(30)
                                .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 1.5)
                                .foregroundColor(.black)
                                .font(Font.custom("Circe", size: 20))
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 10)
                        }
                        
                        HStack {
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                
                                Text("Kids in Need Foundation")
                                    .font(Font.custom("Norwester", size: 25)).bold()
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                        }
                        
                        NavigationLink(destination: PostView().navigationBarBackButtonHidden(true)) {
                            Text("Have extra pencils and paper?")
                            //The Kids in Need Foundation is holding a back-to-school drive in your area! Donate school supplies to our backpack drive to directly support the surrounding public schools.")
                                .padding(30)
                                .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 1.5)
                                .foregroundColor(.black)
                                .font(Font.custom("Circe", size: 20))
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 10)
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
                            .padding(.top, 20)
                        Spacer()
                            .frame(height: 25)
                        Image(systemName: "checkmark")
                            .font(.system(size: 35))
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        Spacer()
                            .frame(height: 25)
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
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        NavigationLink(destination: setProfileIconDest(thebool: mybool).navigationBarBackButtonHidden(true)) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 35))
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
        //        .onAppear {
        //            Auth.auth().addStateDidChangeListener { auth, user in
        //              // ...
        //                if user != nil {
        //                    self.mybool = true
        //                  // User is signed in. Show home screen
        //
        //                } else {
        //                    self.mybool = false
        //                  // No User is signed in. Show user the login screen
        //                }
        //
        //            }
        //        }
    }
}

@ViewBuilder
func setProfileIconDest(thebool : Bool) -> some View {
    
    if Auth.auth().currentUser != nil  {
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
    static var previews: some View {
        Home()
    }
}

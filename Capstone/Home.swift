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
                    
                    Spacer()
                        .frame(height: 20)
                    
                    VStack {
                        
                        HStack {
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                    .offset(x: 15, y: 0)
                                
                                Text("Athens Humane Society")
                                    .font(Font.custom("Circe-bold", size: 25))
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                        }
                        
                        
                        Text("Now until July 31 we are offering FREE adult dog adoptions! The Humane Society’s Athens location is at capacity, so adopt a pup today to bring them to a home for the holidays.")
                            .foregroundColor(.black)
                            .font(Font.custom("Circe", size: 20))
                            .padding(.leading, 40)
                            .padding(.trailing, 40)
                            .multilineTextAlignment(.leading)
                        
                        
                        Image("AthensHumaneSocietyPromotion")
                            .resizable()
                            .scaledToFit()
                            .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            .frame(width: 350, height: 250)
                        
                        HStack {
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                    .offset(x: 15, y: 0)
                                
                                Text("Toys for Tots")
                                    .font(Font.custom("Circe-bold", size: 25)).bold()
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                        }
                        
                        
                        Text("Help ensure every child gets a gift next Christmas! Toys for Tots is providing a toy drive from now until December at our Athens location. Drop off new and used toys to make a positive impact on the children who need it most in the community!")
                            .foregroundColor(.black)
                            .font(Font.custom("Circe", size: 20))
                            .padding(.leading, 40)
                            .padding(.trailing, 40)
                            .multilineTextAlignment(.leading)
                        
                        
                        Image("AthensHumaneSocietyPromotion")
                            .resizable()
                            .scaledToFit()
                            .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            .frame(width: 350, height: 250)
                                .font(.system(size: 22))
                        
                        HStack {
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                    .offset(x: 15, y: 0)
                                
                                Text("Kids in Need Foundation")
                                    .font(Font.custom("Circe-bold", size: 25)).bold()
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                        }
                    }
                    
                    VStack {
                        
                        
                        Text("Have extra pencils and paper? The Kids in Need Foundation is holding a back-to-school drive in your area! Donate school supplies to our backpack drive to directly support the surrounding public schools.")
                            .foregroundColor(.black)
                            .font(Font.custom("Circe", size: 20))
                            .padding(.leading, 40)
                            .padding(.trailing, 40)
                            .multilineTextAlignment(.leading)
                        
                        
                        Image("AthensHumaneSocietyPromotion")
                            .resizable()
                            .scaledToFit()
                            .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            .frame(width: 350, height: 250)
                                .font(.system(size: 22))
                        
                        HStack {
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                    .offset(x: 15, y: 0)
                            }
                            
                            Text("Project Hope")
                                .font(Font.custom("Circe-bold", size: 25)).bold()
                            
                            Spacer()
                        }
                        
                        
                        Text("Help after the Hurricane! Project HOPE is taking donations for water, food, and general emergency supplies to those affected by Hurricane Ida. Donations are being accepted at our Athens location until the end of this month.")
                            .foregroundColor(.black)
                            .font(Font.custom("Circe", size: 20))
                            .padding(.leading, 40)
                            .padding(.trailing, 40)
                            .multilineTextAlignment(.leading)
                        
                        
                        Image("AthensHumaneSocietyPromotion")
                            .resizable()
                            .scaledToFit()
                            .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            .frame(width: 350, height: 250)
                                .font(.system(size: 22))
                        
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
                        
                        NavigationLink(destination: setProfileIconDest(thebool: mybool).navigationBarBackButtonHidden(true)) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 30))
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

//
//  Home.swift
//  Capstone
//
//  Created by Shea Tipton on 2/15/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore

struct Home: View {
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                //Color(red: 248/255, green: 190/255, blue: 169/255)
                    .opacity(0.6)
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 40)
                    
                    VStack {
                        
                        // create for each using all nonprofit accounts in our database
                        Text("News Feed")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle).bold()
                            //.foregroundColor(Color(red: 86/255, green: 23/255, blue: 0/255))
                            .padding(.leading, 35)
  
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
                                    .font(.system(size: 25)).bold()

                            Spacer()
                            }
                        
                        NavigationLink(destination: PostView().navigationBarBackButtonHidden(true)) {
                            Text("Help after the Hurricane! Project HOPE is taking donations for water, food, and general emergency supplies to those affected by Hurricane Ida. Donations are being accepted at our Athens location until the end of this month.")
                                .padding(30)
                                .border(Color.gray.opacity(0.5), width: 1)
                                .foregroundColor(.black)
                                .font(.headline)
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
                                    .font(.system(size: 25)).bold()
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            }
                        
                        NavigationLink(destination: PostView().navigationBarBackButtonHidden(true)) {
                            Text("Now until December 31 we are offering FREE adult dog adoptions! The Humane Society’s Athens location is at capacity, so adopt a pup today to bring them to a home for the holidays.")
                                .padding(30)
                                .border(Color.gray.opacity(0.5), width: 1)
                                .foregroundColor(.black)
                                .font(.headline)
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
                                    .font(.system(size: 25)).bold()
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            }
                        
                        NavigationLink(destination: PostView().navigationBarBackButtonHidden(true)) {
                            Text("Have extra pencils and paper? The Kids in Need Foundation is holding a back-to-school drive in your area! Donate school supplies to our backpack drive to directly support the surrounding public schools.")
                                .padding(30)
                                .border(Color.gray.opacity(0.5), width: 1)
                                .foregroundColor(.black)
                                .font(.headline)
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
                                    .font(.system(size: 25)).bold()
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            }
                        
                        NavigationLink(destination: PostView().navigationBarBackButtonHidden(true)) {
                            Text("Help ensure every child gets a gift this Christmas! Toys for Tots is providing a toy drive from now until December 24 at our Athens location. Drop off new and used toys to make a positive impact on the children who need it most in the community!")
                                .padding(30)
                                .border(Color.gray.opacity(0.5), width: 1)
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 10)
                        }
                    
                        Text("You're all caught up!")
                            .font(.system(size: 25)).bold()
                            .padding(.top, 20)
                           
                    }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ImagesView().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "photo.on.rectangle.angled")
                                .font(.system(size: 35))
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination: DonorProfile().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 35))
                                .font(.headline)
                                .foregroundColor(.black)
                            
                        }
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

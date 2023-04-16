//
//  Browse.swift
//  Capstone
//
//  Created by Shea Tipton on 2/23/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore

struct Browse: View {
    
    @State private var search = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        
                        Spacer()
                            .frame(height: 20)
                        
                        HStack {
                            TextField("Search by item, organization, ...                    ", text: $search)
                                .font(Font.custom("Circe", size: 20)).bold()
                                .padding(20)
                                .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 2)
                                .frame(maxWidth: 300)
                                .padding()
                            
                            // matthew send $search to the next page here
                            NavigationLink(destination: SearchResults().navigationBarBackButtonHidden(true)) {
                                Image(systemName: "arrow.right.circle")
                                    .font(.system(size: 35))
                                    .foregroundColor(.black)
                                    .padding(.trailing, 20)
                            }
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                            HStack {
                                Text("Browse Organizations").bold()
                                    .font(Font.custom("Norwester", size: 22))
                                    .foregroundColor(Color.black)
                                    .offset(x: -60)
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .offset(x: -55)
                            }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 40)
                    
                    VStack {
                        HStack {
                            
                            // to do: remove tag code and replace with for loop
                            // change destination to tag view
                            
                            
                            // tag 1
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Clothing")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 2
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Shoes")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 2
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 3
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Food Items")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 3
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 4
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Baby")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 4
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 5
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Kitchen")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 5
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 6
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Toys & Games")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 6
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 7
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Health & Beauty")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 7
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 8
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Accessories")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 8
                        }
                        
                        Spacer()
                            .frame(height: 35)
                        
                        NavigationLink(destination: TagListView().navigationBarBackButtonHidden(true)) {
                            HStack {
                                Text("See More").bold()
                                    .font(Font.custom("Norwester", size: 22))
                                    .foregroundColor(Color.black)
                                    .offset(x: -120)
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .offset(x: -115)
                            }
                        }
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
                        NavigationLink(destination: DonorProfile().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                            
                        }
                    }
                }
            }
        }
    }
}

struct Browse_Previews: PreviewProvider {
    static var previews: some View {
        Browse()
    }
}

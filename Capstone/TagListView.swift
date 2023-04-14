//
//  TagListView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/2/23.
//

import SwiftUI

struct TagListView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    // matthew : pull the list of tags from tags database, put into tag array
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 40)
                    
                    VStack {
                        Text("Browse Tags")
                            .font(Font.custom("Norwester", size: 35))
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        // }
                        
                        Spacer()
                            .frame(height: 50)
                    }
                    
                    VStack {
                        HStack {
                            
                            // loop to list each tag
                            // tag 1
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Men's Clothing")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // remove code below
                            // tag 2
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Women's Clothing")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 2
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 3
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("School Supplies")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 3
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 4
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Home")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 4
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 5
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Accessories")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 5
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 6
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Arts & Crafts")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 6
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 7
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Toys & Games")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 7
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 8
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Kitchen")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 8
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 7
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Hygiene")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 7
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 8
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Baby")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end tag 8
                        }
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
}

struct TagListView_Previews: PreviewProvider {
    static var previews: some View {
        TagListView()
    }
}

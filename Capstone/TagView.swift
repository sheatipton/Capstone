//
//  TagView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/15/23.
//

import SwiftUI

struct TagView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var id = ""
    @State private var tag = "Shoes" // matthew : pull from tag database
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                
                VStack {
                    VStack {
                        Spacer()
                            .frame(height: 20)
                        
                        HStack {
                            Text("TAG  : ")
                            Text(tag)
                        }
                        .font(Font.custom("Norwester", size: 35))
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        Spacer()
                            .frame(height: 50)
                        
                        Text("Organizations currently")
                            .font(Font.custom("Circe", size: 22))
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        Text("accepting the item(s):")
                            .font(Font.custom("Circe", size: 22))
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        
                        Spacer()
                            .frame(height: 40)
                    }
                    
                    
                    // matthew :  for each loop of all nonprofits, if the "accepted items" array contains the tag, display the code below for that nonprofit
                    // start code
                    
                    NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Text("Toys for Tots").bold()
                                .font(Font.custom("Circe", size: 24))
                                .foregroundColor(Color.black)
                            
                            Image(systemName: "arrow.forward")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            
                        }
                    }
                    
                    
                    Spacer()
                        .frame(height: 20)
                    // end code
                    
                    // remove this code
                    NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Text("Acceptance Recovery Center").bold()
                                .font(Font.custom("Circe", size: 24))
                                .foregroundColor(Color.black)
                            Image(systemName: "arrow.forward")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    }
                    // end remove code
                    
                    Spacer()
                        .frame(height: 70)
                    
                    VStack {
                        
                        NavigationLink(destination: TagListView().navigationBarBackButtonHidden(true)) {
                            Text("Browse More Tags")
                                .frame(minWidth: 170,  maxWidth: 220, minHeight: 85,  maxHeight: 85)
                                .font(Font.custom("Circe", size: 20))
                                .foregroundColor(.black)
                                .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                            Text("Browse Organizations")
                                .frame(minWidth: 170,  maxWidth: 220, minHeight: 85,  maxHeight: 85)
                                .font(Font.custom("Circe", size: 20))
                                .foregroundColor(.black)
                                .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                        }
                    }
                    Spacer()
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
            .navigationBarBackButtonHidden(true)
        }
    }
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}

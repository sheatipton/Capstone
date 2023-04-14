//
//  DonorProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/13/23.
//

import SwiftUI
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore


struct DonorProfile: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var selected = 0
    @State private var fullName = "Shea Tipton"
    @State private var username = "set58568"
    // matthew pull these vars
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Profile")
                        .font(Font.custom("Norwester", size: 35))
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                    
                    HStack {
                        
                        
                        Image("ProfilePlaceholder")
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                            .frame(width: 140, height: 140, alignment: .center)
                            .offset(x: -50, y: 0)
                        
                        Spacer()
                            .frame(width: 20)
                        VStack {
                            Text(fullName)
                                .font(Font.custom("Circe", size: 25))
                            
                            
                            Text(username)
                                .font(Font.custom("Circe", size: 25))
                        }
                        
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("Image Uploads")
                        .font(Font.custom("Circe", size: 25))
                        .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Picker("Image Uploads", selection: $selected) {
                        Text("Currently Needed").tag(0)
                            .font(Font.custom("Circe", size: 30))
                        Text("Not Needed").tag(1)
                            .font(Font.custom("Circe", size: 30))
                    }
                    .pickerStyle(.segmented)
                    .frame(height: 60)
                    .scaleEffect(CGSize(width: 1, height: 1))
                    .scaledToFit()
                    
                    if (selected == 0) {
                        Text("Item(s) currently needed")
                    }
                    
                    if (selected == 1) {
                        VStack {
                            Text("Item(s) Not Currently Needed")
                            Text("We will notify you when an organization needs your item")
                        }
                    }
                    
                    if (selected == 2) {
                        Text("Previously Donated Items")
                    }
                    
                    Spacer()
                }
                .padding(15)
                
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
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ProfileSettings().navigationBarBackButtonHidden()) {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 30))
                                .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                            
                        }
                    }
                }
            }
        }
    }
}

struct DonorProfile_Previews: PreviewProvider {
    static var previews: some View {
        DonorProfile()
    }
}


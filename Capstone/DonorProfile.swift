//
//  DonorProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/13/23.
//

import SwiftUI

struct DonorProfile: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var selected = 0
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Profile")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle).bold()
                        .padding(.leading, 25)
                    
                    HStack {
                        
                        
                        Image("ProfilePlaceholder")
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                            .frame(width: 150, height: 140, alignment: .center)
                            .offset(x: -50, y: 0)
                        
                        Spacer()
                            .frame(width: 40)
                        VStack {
                            Text("Name")
                                .font(.system(size: 25)).bold()
                            
                            
                            Text("Username")
                                .font(.system(size: 25)).bold()
                        }
                        
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Image Uploads")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 25)
                    
                    Picker("Image Uploads", selection: $selected) {
                        Text("Currently Needed").tag(0)
                            .font(.system(size: 16))
                        Text("Not Needed").tag(1)
                        Text("Donated").tag(2)
                    }
                    .pickerStyle(.segmented)
                    .frame(height: 60)
                    .scaleEffect(CGSize(width: 1, height: 1))
                    .scaledToFit()
                    
                    if (selected == 0) {
                        Text("Currently Needed")
                    }
                    
                    if (selected == 1) {
                        VStack {
                            Text("Not Currently Needed")
                            Text("We will notify you when an organization needs your item")
                        }
                    }
                    
                    if (selected == 2) {
                        Text("Donated Items")
                    }
                    
                    
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
                                .font(.system(size: 35))
                                .foregroundColor(.black)
                            
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


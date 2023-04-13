//
//  PostView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct PostView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    // matthew : pull vars from posts table
    @State private var postid = "0"
    @State private var postImage = "PostImage" // optional
    @State private var postCreator = "Project Hope"
    @State private var postContent = "Help after the Hurricane! Project HOPE is taking donations for water, food, and general emergency supplies to those affected by Hurricane Ida. Donations are being accepted at our Athens location until the end of this month."
  
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack {
                        
                        Image("FawnLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                            .offset(x: 0, y: -15)
                        
                        Spacer()
                            .frame(height: 40)
                        
                        Text("Post by:    " + postCreator)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 50)
                            .font(Font.custom("Norwester", size: 25)).foregroundColor(Color.black)
                        
                        Text(postContent)
                            .font(Font.custom("Circe", size: 20)).foregroundColor(Color.black)
                            .padding(.leading, 50)
                            .padding(.trailing, 50)
                            .padding(.top, 20)
                            .padding(.bottom, 20)
                        
                        Spacer()
                            .frame(height: 30)
                        
                        if (postImage != nil) {
                            Image(postImage)
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 350, maxHeight: 350)
                                .border(Color(red: 196/255, green: 87/255, blue: 47/255), width: 5)
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
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

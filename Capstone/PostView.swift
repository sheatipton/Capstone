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
//    @State private var postid = "0"
//    @State private var postImage = "PostImage" // optional
//    @State private var postCreator = "Project Hope"
//    @State private var postContent = "Help after the Hurricane! Project HOPE is taking donations for water, food, and general emergency supplies to those affected by Hurricane Ida. Donations are being accepted at our Athens location until the end of this month."
    @State public var postImage: String
    @State public var postCreator: String
    @State public var postContent: String

  
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
                            AsyncImage(url: URL(string: postImage), content: { img in
                                img
                                    .resizable()
                                    .clipped()
                                    .scaledToFit()
                                    .frame(width: 165, height: 150, alignment: .center)
                            }, placeholder: {
                                
                            }  )
                             
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
        PostView(postImage: "https://w7.pngwing.com/pngs/39/192/png-transparent-santa-claus-christmas-gift-christmas-gift-christmas-presents-plush-toys-and-gift-box-illustration-toy-block-christmas-toy.png", postCreator: "Project Hope", postContent: "Help after the Hurricane! Project HOPE is taking donations for water, food, and general emergency supplies to those affected by Hurricane Ida. Donations are being accepted at our Athens location until the end of this month")
    }
}

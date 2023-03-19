//
//  PostView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct PostView: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Post Details")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle).bold()
                        .padding(.leading, 25)
                    
                    Spacer()
                        .frame(height: 75)
                    
                    Text("Organization Name")
                       // .frame(alignment: .leading)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                        .font(.headline)
                        .padding(.leading, 40)
                        .padding(.trailing, 25)
                        .padding(.bottom, 20)
                    
                    Spacer()
                        .frame(height: 75)
                    
                    Image("ImagePlaceholder")
                        .resizable()
                        .frame(width: 350, height: 350)
                    
                }
                
                // if user is a nonprofit
                // toolbar with delete button
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ImagesView()) {
                            Image(systemName: "trash.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
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

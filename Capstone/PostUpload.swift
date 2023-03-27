//
//  PostUpload.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct PostUpload: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("New Post")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle).bold()
                        .padding(.leading, 25)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Post by: _______")
                        .font(.system(size: 25))
                    Text("Message Content:")
                        .font(.system(size: 25))
                    
                    HStack {
                        
                        Text("Image Upload")
                            .font(.system(size: 25))
                        Image(systemName: "square.and.arrow.up.fill")
                            .font(.system(size: 25))
                        
                    }
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

struct PostUpload_Previews: PreviewProvider {
    static var previews: some View {
        PostUpload()
    }
}

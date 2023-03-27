//
//  PostView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct PostView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var isShowingConfirmDelete = false
    
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
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    
                    Spacer()
                        .frame(height: 75)
                    
                    Image("ImagePlaceholder")
                        .resizable()
                        .frame(width: 350, height: 350)
                    
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
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            isShowingConfirmDelete = true
                        } label: {
                            Image(systemName: "trash.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                        }
                    }
                    
                }
                .alert(isPresented: $isShowingConfirmDelete) {
                    Alert(
                        title: Text("Are you sure you want to delete this item?"),
                        primaryButton: .destructive(Text("Delete")) {
                            // matthew : delete the post from the database
                            dismiss()
                        },
                        secondaryButton: .cancel())
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

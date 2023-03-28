//
//  PostView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct PostView: View {
    
    @Environment(\.dismiss) private var dismiss
    //@State private var isShowingConfirmDelete = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Post Details")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.largeTitle).bold()
                    
                    Spacer()
                        .frame(height: 75)
                    
                    Text("Project Hope")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 50)
                        .font(.system(size: 24)).bold()
                        
                    Text("Help after the Hurricane! Project HOPE is taking donations for water, food, and general emergency supplies to those affected by Hurricane Ida. Donations are being accepted at our Athens location until the end of this month.")
                        .font(.system(size: 18))
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Image("ImagePlaceholder")
                        .resizable()
                        .frame(width: 350, height: 350)
                    Spacer()
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
                    /*ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            isShowingConfirmDelete = true
                        } label: {
                            Image(systemName: "trash.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                        }
                    }*/
                    
                }
                /*.alert(isPresented: $isShowingConfirmDelete) {
                    Alert(
                        title: Text("Are you sure you want to delete this item?"),
                        primaryButton: .destructive(Text("Delete")) {
                            // matthew : delete the post from the database
                            dismiss()
                        },
                        secondaryButton: .cancel())
                }*/
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

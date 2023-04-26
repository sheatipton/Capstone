//
//  ItemView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct ItemView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var isShowingConfirmDelete = false
    
    @State private var item = "item" // matthew : pull item name from database
    @State private var imgPath = "ImagePlaceholder" // pull imgPath from db
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Item Details")
                        .font(Font.custom("Norwester", size: 35))
                        .frame(maxWidth: .infinity, alignment: .center)
                       
                    Spacer()
                        .frame(height: 50)
                   
                    Image(imgPath)
                        .resizable()
                        .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                        .frame(width: 350, height: 375)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Button("Mark as Donated") {
                        isShowingConfirmDelete = true
                    }
                    .font(Font.custom("Circe", size: 20))
                    .foregroundColor(.white)
                    .frame(maxWidth: 250, maxHeight: 50)
                    .background(Color(red: 196/255, green: 87/255, blue: 47/255))
                    .cornerRadius(25.0)
                    Spacer()
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                            
                        } label: {
                            Image(systemName: "arrow.uturn.backward")
                                .font(.system(size: 22))
                                .foregroundColor(.black)
                        }
                    }
                    
                }
                
                .alert(isPresented: $isShowingConfirmDelete) {
                    Alert(
                        title: Text("Are you sure? This image will be deleted."),
                        primaryButton: .destructive(Text("Delete")) {
                            // matthew : delete the item from the database
                            dismiss()
                        },
                        secondaryButton: .cancel())
                }
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}

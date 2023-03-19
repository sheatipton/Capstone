//
//  ItemView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct ItemView: View {
    
    @State private var item = "item" // matthew : pull item name from database
    @State private var imgPath = "ImagePlaceholder" // pull imgPath from db
    @State private var date = "03/19/2023" // pull date from db
    @State private var status = false // pull status from db
    
    @State private var isShowingConfirmDelete = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Item Details")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.largeTitle).bold()
                    
                    Spacer()
                        .frame(height: 50)
                    
                    HStack {
                        Text(item).underline().bold()
                        Text("was uploaded on")
                        Text(date)
                    }
                    .font(.system(size: 20))
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Image(imgPath)
                        .resizable()
                        .frame(width: 350, height: 375)
                    
                    
                    Spacer()
                        .frame(height: 5)
                    
                    // if not donated
                    if (!status) {
                        
                        Button("Mark as Donated") {
                            status = true
                            // matthew : change status to true in database, replace line above
                        }
                        .font(.system(size: 18))
                        .frame(width: 200, height: 100, alignment: .trailing)
                        .offset(x: 50, y: 0)
                        .foregroundColor(.black)
                        
                    } else {
                        
                        Button("Donated") {
                            status = false
                            // matthew : change status to false in database, replace line above
                        }
                        .font(.system(size: 18))
                        .bold()
                        .frame(width: 200, height: 100, alignment: .trailing)
                        .offset(x: 50, y: 0)
                        .foregroundColor(.black)
                    }
                }
            }
            
            .toolbar {
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
                        // matthew : delete the item from the database
                    },
                    secondaryButton: .cancel())
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}

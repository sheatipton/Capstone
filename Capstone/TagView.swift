//
//  TagView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/15/23.
//

import SwiftUI

struct TagView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var id = ""
    @State private var tag = "Medical Supplies" // matthew : pull from tag database
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                VStack {
                    
                    HStack {
                        Text("TAG  : ")
                        Text(tag)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.largeTitle).bold()
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Organizations accepting the item(s):")
                        .font(.system(size: 20))
                    
                    Spacer()
                        .frame(height: 40)
                    
                    NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Text("Mercy Health Center").bold()
                                .font(.headline)
                                .foregroundColor(Color.black)
                                .offset(x: -75)
                            Image(systemName: "arrow.forward")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .offset(x: -75)
                        }
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Text("Athens Community Council on Aging").bold()
                                .font(.headline)
                                .foregroundColor(Color.black)
                                .offset(x: -75)
                            Image(systemName: "arrow.forward")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .offset(x: -75)
                        }
                    }
                    
                    Spacer()
                        .frame(height: 70)
                
                VStack {
                    
                    NavigationLink(destination: TagListView().navigationBarBackButtonHidden(true)) {
                        Text("Browse More Tags")
                            .frame(minWidth: 170,  maxWidth: 200, minHeight: 85,  maxHeight: 85)
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                            .border(Color.black, width: 1)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                        Text("Browse Organizations")
                            .frame(minWidth: 170,  maxWidth: 200, minHeight: 85,  maxHeight: 85)
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                            .border(Color.black, width: 1)
                    }
                    
                }
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
                    }
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}

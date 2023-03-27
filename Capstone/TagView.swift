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
    @State private var tag = "Clothing" // matthew : pull from tag database
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                VStack {
                    
                    HStack {
                        Text("TAG Name : ")
                        Text(tag)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.largeTitle).bold()
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Organizations accepting the item(s):")
                        .font(.system(size: 20))
                    
                    Spacer()
                        .frame(height: 50)
                    
                    // for each organization in the results array, show this
                    NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Text("Organization 1").bold()
                                .font(.system(size: 20))
                                .foregroundColor(Color.black)
                                //.offset(x: -75)
                            Image(systemName: "arrow.forward")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                //.offset(x: -75)
                        }
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    // replace with loop
                    NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Text("Organization 1").bold()
                                .font(.system(size: 20))
                                .foregroundColor(Color.black)
                                //.offset(x: -75)
                            Image(systemName: "arrow.forward")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                //.offset(x: -75)
                        }
                    }// replace
                    
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
        .navigationBarBackButtonHidden(true)
        }
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}

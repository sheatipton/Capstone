//
//  TagView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/15/23.
//

import SwiftUI

struct TagView: View {
    
    @State private var id = ""
    @State private var tag = "Clothing" // matthew : pull from tag database
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
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
                    NavigationLink(destination: NonprofitProfile()) {
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
                    NavigationLink(destination: NonprofitProfile()) {
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
            
        }
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}

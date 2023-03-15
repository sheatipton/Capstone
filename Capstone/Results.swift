//
//  Results.swift
//  Capstone
//
//  Created by Shea Tipton on 3/14/23.
//

import SwiftUI

struct Results: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                // if results
                Text("Organizations that are accepting your item")
                // list
                
                // if no results
                VStack {
                    VStack {
                        Text("Results")
                            .font(.largeTitle).foregroundColor(Color.black)
                        Spacer()
                            .frame(height: 50)
                        
                        Text("There are no organizations accepting that item right now.")
                        Spacer()
                            .frame(height: 20)
                        
                        Text("We will notify you when an organization is in need of that item.")
                        Spacer()
                            .frame(height: 20)
                        
                        Text("Browse organizations or tags to view what items are currently needed.")
                        Spacer()
                            .frame(height: 20)
                        
                    }
                    
                    VStack {
                        NavigationLink(destination: OrganizationListView()) {
                            Text("Browse Nonprofits")
                                .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                                .border(Color.black, width: 1)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: TagListView()) {
                            Text("Browse Items Needed")
                                .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                                .border(Color.black, width: 1)
                        }
                    }
                }
            }
        }
    }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        Results()
    }
}

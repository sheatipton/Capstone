//
//  Results.swift
//  Capstone
//
//  Created by Shea Tipton on 3/14/23.
//

import SwiftUI

struct Results: View {
    
    // create results array
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    // if there are results
                    //Text("Organizations that are accepting your item")
                    // list
                    

                    // if results array == nil
                    VStack {
                        Text("Results")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.largeTitle).bold()
                        
                        Spacer()
                            .frame(height: 100)
                        
                        Text("There are no organizations accepting that item right now.")
                            .font(.system(size: 16))
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text("We will notify you when an organization is in need of that item.")
                            .font(.system(size: 16))
                            
                        Spacer()
                            .frame(height: 50)
                    }
                    
                    VStack {
                        
                        NavigationLink(destination: OrganizationListView()) {
                            Text("Browse Organizations")
                                .frame(minWidth: 170,  maxWidth: 200, minHeight: 85,  maxHeight: 85)
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                                .border(Color.black, width: 1)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: TagListView()) {
                            Text("Browse Items Needed")
                                .frame(minWidth: 170,  maxWidth: 200, minHeight: 85,  maxHeight: 85)
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

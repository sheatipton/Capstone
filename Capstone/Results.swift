//
//  Results.swift
//  Capstone
//
//  Created by Shea Tipton on 3/14/23.
//

import SwiftUI

struct Results: View {
    
    @Environment(\.dismiss) private var dismiss

    
    // create results array
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                VStack {
                    // if no results
                    /*Text("There are no organizations accepting that item right now.")
                        .font(.system(size: 16))
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("We will notify you when an organization is in need of that item.")
                        .font(.system(size: 16))
                        
                    Spacer()
                        .frame(height: 50)
                     */
                    

                    // if results array != nil
                    Spacer()
                        .frame(height: 30)
                    
                    VStack {
                        Text("Results")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.largeTitle).bold()
                        
                        Spacer()
                            .frame(height: 40)
                        
                        Text("Organizations accepting your item:")
                            .font(.system(size: 20))
                        
                        Spacer()
                            .frame(height: 40)
                        
                        NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                            HStack {
                                Text("BooksForKeeps").bold()
                                    .font(.headline)
                                    .foregroundColor(Color.black)
                                    //.offset(x: -75)
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                   // .offset(x: -75)
                            }
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                            HStack {
                                Text("Athens Community Council on Aging").bold()
                                    .font(.headline)
                                    .foregroundColor(Color.black)
                                    //.offset(x: -75)
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    //.offset(x: -75)
                            }
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                            HStack {
                                Text("Acceptance Recovery Center").bold()
                                    .font(.headline)
                                    .foregroundColor(Color.black)
                                   
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    //.offset(x: -75)
                            }
                        }
                   
                        Spacer()
                            .frame(height: 70)
                        
                        /*Text("There are no organizations accepting that item right now.")
                            .font(.system(size: 16))
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text("We will notify you when an organization is in need of that item.")
                            .font(.system(size: 16))
                            
                        Spacer()
                            .frame(height: 50)
                         */
                    }
                    
                    VStack {
                        
                        NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                            Text("Browse Organizations")
                                .frame(minWidth: 170,  maxWidth: 200, minHeight: 85,  maxHeight: 85)
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                                .border(Color.black, width: 1)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: TagListView().navigationBarBackButtonHidden(true)) {
                            Text("Browse Tags")
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
            }
        }
    }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        Results()
    }
}

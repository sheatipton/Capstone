//
//  OrganizationListView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/2/23.
//

import SwiftUI

struct OrganizationListView: View {
    
    // matthew : pull the list of nonprofits from nonprofits database, put into nonprofits array
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 40)
                    
                    VStack {
                        /*HStack {
                            NavigationLink(destination: Browse()) {
                                Image(systemName: "arrow.uturn.backward")
                                    .foregroundColor(.black)
                                    .font(.system(size: 28))
                                    .padding(.leading, 20)
                            }*/
                            Text("Browse Nonprofits")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.largeTitle).bold()
                       // }
                        
                        Spacer()
                            .frame(height: 50)
                        }
                    
                    VStack {
                        HStack {
                            
                            // loop to list each nonprofit
                            // org 1
                            NavigationLink(destination: NonprofitProfile()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                    
                            } // end org 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // remove all code below
                            // org 2
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end org 2
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // org 3
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                    
                            } // end org 3
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 4
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end org 4
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // org 5
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                    
                            } // end org 5
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 6
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end org 6
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // org 7
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                    
                            } // end org 7
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 8
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end org 8
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 1
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                    
                            } // end tag 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 2
                            NavigationLink(destination: Login()) {
                                Text("Nonprofit")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 2
                        }
                       
                    }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ImagesView()) {
                            Image(systemName: "photo.on.rectangle.angled")
                                .font(.system(size: 35))
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination: Login()) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 35))
                                .font(.headline)
                                .foregroundColor(.black)
                            
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct OrganizationListView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationListView()
    }
}

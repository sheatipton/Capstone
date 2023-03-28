//
//  OrganizationListView.swift
//  Capstone
//
//  Created by Shea Tipton on 3/2/23.
//

import SwiftUI

struct OrganizationListView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    // matthew : pull the list of nonprofits from nonprofits database, put into nonprofits array and display in a loop. (or we can hard code it)
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 40)
                    
                    VStack {
                       
                        Text("Browse Nonprofits")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.largeTitle).bold()
                        
                        HStack {
                            Text("in your area: ")
                            Text("Athens, GA").bold()
                        }
                        .font(.system(size: 20))
                        .padding(.top, 5)
                        
                        Spacer()
                            .frame(height: 50)
                    }
                    
                    VStack {
                        HStack {
                            
                            // loop to list each nonprofit
                            // org 1
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Books for Keeps")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                
                                
                            } // end org 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // remove all code below
                            // org 2
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Project Safe")
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
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Acceptance Recovery Center")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                
                            } // end org 3
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 4
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Family Promise")
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
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Athens Land Trust")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                
                            } // end org 5
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 6
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Mercy Health")
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
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Athens Area Homeless Shelter")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end org 7
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 8
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Athens Regional Library System")
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
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("College Factory")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                                
                            } // end tag 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 2
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                Text("Athens Community Council on Aging")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 2
                        }
                        
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
            }
        }
    }
}

struct OrganizationListView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationListView()
    }
}

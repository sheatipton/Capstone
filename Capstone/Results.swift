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
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack {
                        // if no results
                        /*Text("There are no organizations accepting that item right now.")
                         .font(Font.custom("Norwester", size: 35))
                         
                         Spacer()
                         .frame(height: 20)
                         
                         Text("We will notify you when an organization is in need of that item.")
                         .font(Font.custom("Norwester", size: 35))
                         
                         Spacer()
                         .frame(height: 50)
                         */
                        
                        
                        // if results array != nil
                        
                        Spacer()
                            .frame(height: 20)
                        
                        VStack {
                            VStack {
                                Text("Results")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(Font.custom("Norwester", size: 35))
                                
                                Spacer()
                                    .frame(height: 40)
                                
                                Text("Organizations currently")
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                                Text("accepting the item(s):")
                                    .font(Font.custom("Circe", size: 22))
                                    .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                                
                                Spacer()
                                    .frame(height: 40)
                            }
                            
                            // matthew : same concept as tag view page
                            // start code
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                HStack {
                                    Text("BooksForKeeps").bold()
                                        .font(Font.custom("Circe", size: 24))
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
                            // end code
                            
                            NavigationLink(destination: NonprofitProfile().navigationBarBackButtonHidden(true)) {
                                HStack {
                                    Text("ACCA").bold()
                                        .font(Font.custom("Circe", size: 24))
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
                                        .font(Font.custom("Circe", size: 24))
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
                                    .frame(minWidth: 170,  maxWidth: 220, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            }
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(destination: TagListView().navigationBarBackButtonHidden(true)) {
                                Text("Browse Tags")
                                    .frame(minWidth: 170,  maxWidth: 220, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20))
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
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
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        Results()
    }
}

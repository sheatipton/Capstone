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
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 20)
                    
                    VStack {
                        
                        Text("Browse Nonprofits")
                            .font(Font.custom("Norwester", size: 35))
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                        HStack {
                            Text("in your area: ")
                            Text("Athens, GA").underline()
                        }
                        .font(Font.custom("Norwester", size: 25))
                        .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        .padding(.top, 5)
                        
                        Spacer()
                            .frame(height: 50)
                    }
                    
                    VStack {
                        HStack {
                            
                            // loop to list each nonprofit
                            // org 1
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                .navigationBarBackButtonHidden(true)) {
                                Text("Toys for Tots")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                    .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                                
                                
                            } // end org 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // remove all code below
                            // org 2
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                .navigationBarBackButtonHidden(true)) {
                                Text("Project Safe")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end org 2
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // org 3
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                .navigationBarBackButtonHidden(true)) {
                                Text("Acceptance Recovery Center")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                                
                            } // end org 3
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 4
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri").navigationBarBackButtonHidden(true)) {
                                Text("Family Promise")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end org 4
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // org 5
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                .navigationBarBackButtonHidden(true)) {
                                Text("Athens Land Trust")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                                
                            } // end org 5
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 6
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                .navigationBarBackButtonHidden(true)) {
                                Text("Mercy Health")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end org 6
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // org 7
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri").navigationBarBackButtonHidden(true)) {
                                Text("Athens Area Homeless Shelter")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end org 7
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // org 8
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                .navigationBarBackButtonHidden(true)) {
                                Text("Athens Regional Library System")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                            } // end org 8
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 1
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
                                .navigationBarBackButtonHidden(true)) {
                                Text("College Factory")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
                                
                            } // end tag 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 2
                            NavigationLink(destination:        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri").navigationBarBackButtonHidden(true)) {
                                Text("ACCA")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(Font.custom("Circe", size: 20)).bold()
                                    .foregroundColor(.black)
                                   .border(Color(red: 248/255, green: 190/255, blue: 169/255), width: 3)
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
                                .font(.system(size: 22))
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

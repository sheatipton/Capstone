//
//  NonprofitProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/13/23.
//

import SwiftUI
import MapKit

struct NonprofitProfile: View {
    
    @Environment(\.dismiss) private var dismiss
    @State public var name: String
    @State public var items: [String]
    @State public var aboutUs: String
    @State public var address: String
    @State public var site: String
    @State public var profileImg: String
    @State public var operationHours: String
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    Spacer()
                        .frame(height: 20)
                    
                    VStack {
                        
                        Text(name)
                            .font(Font.custom("Norwester", size: 35))
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text(address)
                            .font(Font.custom("Circe", size: 24))
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        Text("Open:")
                            .font(Font.custom("Norwester", size: 22))
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        Text(operationHours)
                            .font(Font.custom("Circe", size: 22))
                    }
                    
                    VStack(alignment: .leading) {
                    Spacer()
                        .frame(height: 30)
                    
                        Text("About Us")
                            .font(Font.custom("Norwester", size: 24))
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                            .padding([.leading, .trailing], 30)
                        Text(aboutUs)
                            .padding([.leading, .trailing, .bottom], 30)
                            .font(Font.custom("Circe", size: 22))
                        
                        Text("We're looking for...")
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                            .font(Font.custom("Norwester", size: 22))
                            .padding([.leading, .trailing], 30)
                        
                        ForEach(items, id: \.self) { item in
                            Text(item)
                            .font(Font.custom("Circe", size: 22))
                          .padding([.leading, .trailing], 30)
                        }
                      
                    }
                    
                    HStack {
                
                        AsyncImage(url: URL(string: profileImg), content: { img in
                            img
                                .resizable()
                                .clipped()
                                .scaledToFit()
                                .frame(minWidth: 165, maxWidth: 165, minHeight: 150, maxHeight: 150, alignment: .center)
                        }, placeholder: {
                            
                        }  )
                        
                        Spacer()
                            .frame(width: 20)
                        VStack {
                            Text("Learn more at")
                                .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                                .font(Font.custom("Norwester", size: 22))
                            Text(site)
                                .font(Font.custom("Circe", size: 22))
                        }
                    }
                    Spacer()
                        .frame(height: 30)
                    Divider()
                    
                    Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 33.9599, longitude: -83.378), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))), interactionModes: [])
                        .frame(width: .infinity, height: 200)
                        .ignoresSafeArea()
                    
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

struct NonprofitProfile_Previews: PreviewProvider {
    static var previews: some View {
        NonprofitProfile(name: "123 Spring Street Athens, GA 30605", items: ["toys,shoes"], aboutUs: "toys for tots", address: "123 street", site: "toysfortots.org", profileImg: "ToysForTots", operationHours: "8am - 5pm Mon - Fri")
    }
}

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
    
    // matthew : pull vars from nonprofit db
    @State private var name = "Toys For Tots"
    @State private var address = "123 Spring Street Athens, GA 30605"
    @State private var imgPath = "ToysForTots"
    @State private var sitePath = "mysite.net"
    
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
                            .font(Font.custom("Circe", size: 20))
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Our Hours")
                        .font(Font.custom("Norwester", size: 20))
                        .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                    Text("8am - 5pm, Monday - Friday")
                        .font(Font.custom("Circe", size: 20))
                    
                    VStack {
                    Spacer()
                        .frame(height: 30)
                    
                        Text("About Us")
                            .font(Font.custom("Norwester", size: 22))
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        Text("97% of your donation goes to our mission of providing toys, books and other gifts to less fortunate children. The 3% spent on support principally covers fundraising expenses – not one donated dollar goes to pay for salaries or any other manpower costs.")
                            .padding([.leading, .trailing, .bottom], 30)
                            .font(Font.custom("Circe", size: 20))
                        
                        Text("We're looking for...")
                            .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                            .font(Font.custom("Norwester", size: 22))
                        Text("Children's clothing, shoes, toys, etc.")
                            .font(Font.custom("Circe", size: 20))
                            .padding([.leading, .trailing, .bottom], 30)
                    }
                    
                    HStack {
                        Image(imgPath)
                            .resizable()
                            .clipped()
                            .scaledToFit()
                            .frame(width: 165, height: 150, alignment: .center)
                        
                        Spacer()
                            .frame(width: 20)
                        VStack {
                            Text("Learn more at")
                                .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                                .font(Font.custom("Norwester", size: 20))
                            Text(sitePath)
                                .font(Font.custom("Circe", size: 20))
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
                                .font(.system(size: 30))
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
        NonprofitProfile()
    }
}

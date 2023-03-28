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

    var body: some View {
        
        ZStack {
            Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                .ignoresSafeArea()
            
            NavigationView {
                
                VStack {
                    
                    ZStack {
                        Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 33.9599, longitude: -83.378), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))), interactionModes: [])
                            .frame(width: .infinity, height: 200)
                            .ignoresSafeArea()
                        
                        Image(imgPath)
                            .resizable()
                            .clipped()
                            .scaledToFit()
                            .frame(width: 130, height: 130, alignment: .center)
                            .offset(x: -140, y: 53)
                        
                        Text(name)
                            .font(.system(size: 25)).bold()
                            .offset(x: 20, y: 80)
                        
                        
                    }
                    
                    Form {
                        
                        Section(header: Text("Location")) {
                            Text(address)
                        }
                        
                        Section(header: Text("About")) {
                            Text("97% of your donation goes to our mission of providing toys, books and other gifts to less fortunate children. The 3% spent on support principally covers fundraising expenses – not one donated dollar goes to pay for salaries or any other manpower costs.")
                        }
                        
                        Section(header: Text("Looking for...")) {
                            Text("Children's clothing, shoes, toys, etc.")
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

struct NonprofitProfile_Previews: PreviewProvider {
    static var previews: some View {
        NonprofitProfile()
    }
}

//
//  Profile.swift
//  Capstone
//
//  Created by Shea Tipton on 2/16/23.
//

import SwiftUI
import MapKit

struct Profile: View {
    var body: some View {
        
        ZStack {
            Color(red: 235/255, green: 252/255, blue: 208/255)
                .ignoresSafeArea()
            
            NavigationView {
                
                VStack {
                    
                    ZStack {
                        Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 33.9599, longitude: -83.378), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))), interactionModes: [])
                            .frame(width: .infinity, height: 200)
                            .ignoresSafeArea()
                        
                        Image("ProfilePlaceholder")
                            .resizable()
                            .clipped()
                            .scaledToFit()
                            .frame(width: 130, height: 130, alignment: .center)
                            .offset(x: -150, y: 53)
                        
                        Text("Nonprofit")
                            .font(.system(size: 25)).bold()
                            .offset(x: 50, y: 90)
                        
                    }
                    
                    Form {
                        
                        Section(header: Text("Location")) {
                            Text("123 Spring Street")
                            Text("City, State 12345")
                        }
                        
                        Section(header: Text("About")) {
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        }
                        
                        Section(header: Text("Looking for...")) {
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        }
                        
                        Section(header: Text("Contact")) {
                            Text("1-800-545-GIVE")
                        }
                    }
                }
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

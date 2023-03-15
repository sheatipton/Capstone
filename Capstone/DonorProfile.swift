//
//  DonorProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/13/23.
//

import SwiftUI

struct DonorProfileTemporary: View {
    var body: some View {
        
        ZStack {
            Color(red: 235/255, green: 252/255, blue: 208/255)
                .ignoresSafeArea()
            
            NavigationView {
                
                VStack {
                    
                    ZStack {
                        Spacer()
                            .frame(width: .infinity, height: 200)
                        
                        HStack {
                            Image("ProfilePlaceholder")
                                .resizable()
                                .clipped()
                                .scaledToFit()
                                .frame(width: 130, height: 130, alignment: .center)
                                .offset(x: -150, y: 53)
                            
                            VStack {
                                Text("Name")
                                    .font(.system(size: 25)).bold()
                                    .offset(x: 50, y: 90)
                                
                                Text("Username")
                                    .font(.system(size: 25)).bold()
                                    .offset(x: 50, y: 90)
                            }
                        }
                    }
                    
                    Text("Image Uploads")
                    
                    // create tab view
                    
                }
            }
        }
    }
}

struct DonorProfileTemporary_Previews: PreviewProvider {
    static var previews: some View {
        DonorProfileTemporary()
    }
}


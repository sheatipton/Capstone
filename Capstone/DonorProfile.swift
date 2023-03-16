//
//  DonorProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/13/23.
//

import SwiftUI

struct DonorProfile: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    HStack {
                        
                        
                        Image("ProfilePlaceholder")
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                            .frame(width: 150, height: 140, alignment: .center)
                            .offset(x: 105, y: 0)
                        
                        Spacer()
                            .frame(width: 40)
                        VStack {
                            Text("Name")
                                .font(.system(size: 25)).bold()
                            
                            
                            Text("Username")
                                .font(.system(size: 25)).bold()
                        }
                        
                    }
                    
                    Text("Image Uploads")
                    // tab view
                    
                    
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ImagesView()) {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 35))
                                .foregroundColor(.black)
                            
                        }
                    }
                }
            }
        }
    }
}

struct DonorProfile_Previews: PreviewProvider {
    static var previews: some View {
        DonorProfile()
    }
}


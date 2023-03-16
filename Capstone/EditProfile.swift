//
//  EditProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct EditProfile: View {
    
    @State private var fullName = ""
    @State private var username = ""
    
    var body: some View {
       
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image("ProfilePlaceholder")
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFit()
                        .frame(width: 150, height: 150, alignment: .center)
                        .offset(x: -105, y: 0)
                    
                    TextField("Name", text: self.$fullName)
                        .padding()
                        .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                        .frame(minWidth: 0, maxWidth: 340)
                        .background(Color(red: 244, green: 244, blue: 244))
                        .cornerRadius(10.0)
                    
                    TextField("Username", text: self.$username)
                        .padding()
                        .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                        .frame(minWidth: 0, maxWidth: 340)
                        .background(Color(red: 244, green: 244, blue: 244))
                        .cornerRadius(10.0)
                    
                   
                    
                }
            }
        }
        
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}

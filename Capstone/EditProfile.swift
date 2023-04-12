//
//  EditProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct EditProfile: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var fullName = ""
    @State private var username = ""
    
    var body: some View {
       
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Edit Profile")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle).bold()
                        .padding(.leading, 25)
                    
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

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}

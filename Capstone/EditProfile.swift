//
//  EditProfile.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct EditProfile: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var id = "0"
    @State private var fullName = "Shea Tipton"
    @State private var username = "set58568"
    @State private var email = "set58568@uga.edu"
    @State private var imgPath = "ProfilePlaceholder"
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Edit Profile")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(Font.custom("Norwester", size: 35))
                    
                    Image(imgPath)
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFit()
                        .frame(width: 150, height: 140, alignment: .center)
                    
                    VStack {
                        Text("Full Name")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                            .offset(x: -100, y: 10)
                        TextField("", text: self.$fullName)
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 300, maxHeight: 50)
                            .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                            .cornerRadius(15.0)
                            .padding(.bottom, 5)
                        
                        Text("Username")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                            .offset(x: -100, y: 10)
                        TextField("", text: self.$username)
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 300, maxHeight: 50)
                            .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                            .cornerRadius(15.0)
                            .padding(.bottom, 5)
                        
                        Text("Email")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                            .offset(x: -120, y: 10)
                        TextField("", text: self.$email)
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 300, maxHeight: 50)
                            .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                            .cornerRadius(15.0)
                            .padding(.bottom, 40)
                    }
                    
                    Button("Save Changes") {
                        // matthew : save all fields to the user
                    }
                    .font(Font.custom("Circe", size: 20))
                    .foregroundColor(.white)
                    .frame(maxWidth: 250, maxHeight: 50)
                    .background(Color(red: 196/255, green: 87/255, blue: 47/255))
                    .cornerRadius(25.0)
                    Spacer()
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

//
//  SignUp.swift
//  Capstone
//
//  Created by Shea Tipton on 3/14/23.
//

import SwiftUI

struct SignUp: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var userType = ""
    @State private var username = ""
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var dob = ""
    
    var body: some View {
        
        NavigationView {
        
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Create an Account")
                        .font(Font.custom("Norwester", size: 35)).foregroundColor(Color.black)
                        .padding(.top, 15)
                    Spacer()
                    
                    VStack { // Sign up fields
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
                            .offset(x: -100, y: 5)
                        TextField("", text: self.$username)
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 300, maxHeight: 50)
                            .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                            .cornerRadius(15.0)
                            .padding(.bottom, 5)
                        
                        Text("Email")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                            .offset(x: -120, y: 5)
                        TextField("", text: self.$email)
                            .font(Font.custom("Circe", size: 20))
                            .frame(minWidth: 0, maxWidth: 300, maxHeight: 50)
                            .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                            .cornerRadius(15.0)
                            .padding(.bottom, 5)
                        
                        Text("Password")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                            .offset(x: -100, y: 5)
                        SecureField("", text: self.$password)
                            .font(Font.custom("Circe", size: 20))
                            .padding(.bottom, 30)
                            .frame(minWidth: 0, maxWidth: 300, maxHeight: 50)
                            .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                            .cornerRadius(15.0)
                            .padding(.bottom, 5)
                        
                        Text("Confirm Password")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                            .offset(x: -60, y: 5)
                        SecureField("", text: self.$confirmPassword)
                            .font(Font.custom("Circe", size: 20))
                            .padding(.bottom, 10)
                            .frame(minWidth: 0, maxWidth: 300, maxHeight: 50)
                            .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                            .cornerRadius(15.0)
                            .padding(.bottom, 5)
                        
                    }
                    Spacer()
                    
                    VStack {
                        Button("Sign Up") {
                            registerDonor(email: email,password: password,userName: username,fullName: fullName)
                            
                            self.fullName = ""
                            self.username = ""
                            self.email = ""
                            self.password = ""
                            self.confirmPassword = ""
                        }
                        .font(Font.custom("Circe", size: 20))
                        .foregroundColor(.white)
                        .frame(maxWidth: 250, maxHeight: 50)
                        .background(Color(red: 196/255, green: 87/255, blue: 47/255))
                        .cornerRadius(25.0)
                        .padding(.bottom, 20)
                    }
                    Spacer()
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

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

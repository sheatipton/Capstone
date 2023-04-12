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
        
        ZStack {
            Color(red: 255/255, green: 249/255, blue: 245/255)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Create an Account")
                    .font(Font.custom("Norwester", size: 35)).foregroundColor(Color.black)
                Spacer()
                
                
                VStack { // Sign up fields
                    Text("Full Name")
                        .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                        .offset(x: -100, y: 5)
                    TextField("", text: self.$fullName)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 300)
                        .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                        .cornerRadius(15.0)
                    
                    Text("Username")
                        .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                        .offset(x: -100, y: 5)
                    TextField("", text: self.$username)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 300)
                        .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                        .cornerRadius(15.0)
                    
                    Text("Email")
                        .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                        .offset(x: -120, y: 5)
                    TextField("", text: self.$email)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 300)
                        .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                        .cornerRadius(15.0)
                    
                    Text("Password")
                        .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                        .offset(x: -100, y: 5)
                    SecureField("", text: self.$password)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 300)
                        .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                        .cornerRadius(15.0)
                    
                    Text("Confirm Password")
                        .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                        .offset(x: -70, y: 5)
                    SecureField("", text: self.$confirmPassword)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 300)
                        .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                        .cornerRadius(15.0)
                    
                }.padding(.bottom, 5)
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
                    .padding()
                    .frame(maxWidth: 250, maxHeight: 50)
                    .background(Color(red: 196/255, green: 87/255, blue: 47/255))
                    .cornerRadius(25.0)
                    
                    HStack {
                        Text("Already have an account?")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                        
                        NavigationLink(destination: Login()) {
                            Text("Sign in").underline()
                                .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                            
                        }
                    }
                }
            }
            .padding([.top, .bottom], 50)
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

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

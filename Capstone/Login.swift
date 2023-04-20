//
//  Login.swift
//  Capstone
//
//  Created by Shea Tipton on 2/2/23.
//

import SwiftUI

struct Login: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var email = ""
    @State private var password = ""
    @State private var loginFailure = false
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    NavigationLink(destination: Home()
                        .navigationBarBackButtonHidden(true)) {
                        Image("FawnLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                            .offset(x: 0, y: -60)
                    }
                     
                    Text("Login")
                        .font(Font.custom("Norwester", size: 45)).foregroundColor(Color.black)
                    
                    Spacer()
                        .frame(height: 50)
                    
                         
                        Text("Username")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                            .offset(x: -100, y: 5)
                        TextField("", text: self.$email)
                            .padding()
                            .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                            .frame(minWidth: 0, maxWidth: 300)
                            .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                            .cornerRadius(15.0)
                            .padding(.bottom, 20)
                        
                    Text("Password")
                        .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                        .offset(x: -100, y: 5)
                    SecureField("", text: self.$password)
                        .padding()
                        .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                        .foregroundColor(.black)
                    
                        .frame(minWidth: 0, maxWidth: 300)
                        .background(Color(red: 248/255, green: 190/255, blue: 169/255))
                        .cornerRadius(15.0)
                        .padding(.bottom, 50)
                    Button("Sign In") {
                       // DispatchQueue.main.async {
                            signInDonor(email: email, password: password)
                            dismiss()
                        
                        //}
                    }
                    .font(Font.custom("Circe", size: 20))
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: 250, maxHeight: 50)
                    .background(Color(red: 196/255, green: 87/255, blue: 47/255))
                    .cornerRadius(25.0)
                    
                    Spacer()
                    
                        //.frame(height:)
                    HStack {
                        Text("Don't have an account?")
                            .font(Font.custom("Norwester", size: 20)).foregroundColor(Color.black)
                        
                        NavigationLink(destination: SignUp()
                            .navigationBarBackButtonHidden(true)) {
                            Text("Create one").underline()
                                .font(Font.custom("Norwester", size: 20))
                                .foregroundColor(Color(red: 196/255, green: 87/255, blue: 47/255))
                        }
                    }
                } .padding([.top, .bottom], 50)
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

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

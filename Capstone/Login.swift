//
//  Login.swift
//  Capstone
//
//  Created by Shea Tipton on 2/2/23.
//

import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
        
            VStack(alignment: .center, spacing: 25) {
                Text("Welcome")
                    .font(.largeTitle).foregroundColor(Color.white)
                    .padding([.top, .bottom], 40)
                TextField("Email", text: self.$email)
                    .padding()
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                SecureField("Password", text: self.$password)
                    .padding()
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(20.0)
                Button("Sign In") {}
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color(red: 244, green: 244, blue: 244))
                    .cornerRadius(15.0)
                NavigationLink(destination: SignUp()) {
                    Text("Don't have an account? Sign up here.").underline()
                        .foregroundColor(.black)
                }
            } .padding([.leading, .trailing], 27.5)
        }
    }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

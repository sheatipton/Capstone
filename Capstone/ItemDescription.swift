//
//  ItemDescription.swift
//  Capstone
//
//  Created by Shea Tipton on 3/19/23.
//

import SwiftUI

struct ItemDescription: View {
    
    @Environment(\.dismiss) private var dismiss
    @State var uiImage: UIImage?
    @State private var item: String?
    
    // matthew : can you add these vars to the images database?
    @State private var id = "" // auto increment variable?
    // maybe move id to upload view so it is easier to identify on this view
    
    @State var imageString: String?// can you pull this variable from the ai generated
    @State private var color = ""
    @State private var size = ""
    @State private var condition = ""
    @State private var date = Date()
    @State private var status = false // this will be false for not donated, true for donated
    
    var body: some View {
        
        NavigationView {
        
            ZStack {
                Color(red: 255/255, green: 249/255, blue: 245/255)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Item Information")
                        .font(.largeTitle).foregroundColor(Color.black)
                        .padding(.top, 20)
                    
                    Image(uiImage: uiImage!)
                    //Image("ImagePlaceholder")
                        .resizable()
                        .frame(width: 200, height: 250)
                        //.padding(.top, 10)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text(imageString!)
                        .padding()
                        .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                        .frame(minWidth: 0, maxWidth: 340)
                        .background(Color(red: 244, green: 244, blue: 244))
                    
                    TextField("Color", text: self.$color)
                        .padding()
                        .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                        .frame(minWidth: 0, maxWidth: 340)
                        .background(Color(red: 244, green: 244, blue: 244))
                    
                    TextField("Size", text: self.$size)
                        .padding()
                        .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                        .frame(minWidth: 0, maxWidth: 340)
                        .background(Color(red: 244, green: 244, blue: 244))
                    
                    TextField("Condition", text: self.$condition)
                        .padding()
                        .font(.system(size: 20, design: .rounded)) .padding(.horizontal)
                        .frame(minWidth: 0, maxWidth: 340)
                        .background(Color(red: 244, green: 244, blue: 244))
                    
                    Spacer()
                        .frame(height: 40)
                    
                    NavigationLink(destination: Results().navigationBarBackButtonHidden(true).onAppear {
                        uploadData()
                        getResults()}) {
                        Text("Continue")
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.white).bold()
                            .padding()
                            .frame(minWidth: 0, maxWidth: 150)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30.0)
                            .padding(.horizontal)
                    }
                    Spacer()
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
    }
    
    func uploadData () {
        // matthew : can you upload the other data to the database?
        // ex: item, color, size, condition
    }
    
    func getResults() {
        // todo : get results
    }
}

struct ItemDescription_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescription()
    }
}

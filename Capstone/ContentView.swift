import SwiftUI
import FirebaseCore
import FirebaseFirestore

struct ContentView: View {
    @State var isShowingPictures = false
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.black)
                        .font(.system(size: 40))
                        .padding()
                    Text("hello, world!")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                    
                }
                
                // .navigationBarTitleDisplayMode(.inline)
                // .navigationTitle("TBD")
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            //writeData()
                            isShowingPictures = true
                        } label: {
                            Image(systemName: "camera.viewfinder")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Login()) {
                            Text("Login").underline()
                                .font(.system(size: 20))
                                .font(.headline)
                                .foregroundColor(.black)
                            
                        }
                    }
                }
            }
            
            .sheet(isPresented: $isShowingPictures, onDismiss: nil) {
                ImageLibrary()
                
                
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    func writeData() {
        let db = Firestore.firestore()
        
        db.collection("cities").document("LA").setData([
            "name": "Los Angeles",
            "state": "CA",
            "country": "USA"
        ]) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
        
    }
}
    

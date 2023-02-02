import SwiftUI
import FirebaseCore
import FirebaseFirestore

struct ContentView: View {
    @State var isShowingPictures = false
    var body: some View {
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding()
            VStack {
                Button {
                    //writeData()
                    isShowingPictures = true
                } label: {
                    Text("Select photos")
                }
            }
            
        }
        .sheet(isPresented: $isShowingPictures, onDismiss: nil) {
            ImageLibrary()
            
            NavigationView {
                ZStack {
                    Color(red: 160/255, green: 145/255, blue: 140/255)
                        .ignoresSafeArea()
                    
                    
                    Text("hello, world!")
                        .font(.system(size: 50))
                    
                    
                }
                
                // .navigationBarTitleDisplayMode(.inline)
                // .navigationTitle("TBD")
                
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination: SignUp()) {
                            Image(systemName: "camera.viewfinder")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Login()) {
                            Text("Login")
                                .font(.system(size: 20))
                                .font(.headline)
                                .foregroundColor(.black)
                            
                        }
                    }
                }
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

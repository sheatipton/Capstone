import SwiftUI
import FirebaseCore
import FirebaseFirestore

struct ContentView: View {
    @EnvironmentObject private var authState: AuthState
    var body: some View {
        
        TabView() {
            
            Home()
                .font(.system(size: 30, weight: .bold, design: .rounded)) .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            if authState.isUserAuthenticated {
                UploadView(classifier: ImageClassifier())
                    .font(.system(size: 30, weight: .bold, design: .rounded)) .tabItem {
                        Image(systemName: "photo")
                        Text("Upload")
                    }
                
            } else {
                Login()
                    .font(.system(size: 30, weight: .bold, design: .rounded)) .tabItem {
                        Image(systemName: "photo")
                        Text("Upload")
                    }
                
            }

            Browse()
                .font(.system(size: 30, weight: .bold, design: .rounded)) .tabItem {
                    Image(systemName: "circle.grid.3x3.fill")
                    Text("Browse")
                    
                }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        @EnvironmentObject private var authState: AuthState
        static var previews: some View {
            ContentView()
                .environmentObject(AuthState())
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


import SwiftUI
import FirebaseCore
import FirebaseFirestore

struct ContentView: View {
   
    var body: some View {
        
        TabView() {
            
            Home()
                .font(.system(size: 30, weight: .bold, design: .rounded)) .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            UploadView(classifier: ImageClassifier())
                .font(.system(size: 30, weight: .bold, design: .rounded)) .tabItem {
                    Image(systemName: "photo")
                    Text("Images")
                }

            Browse()
                .font(.system(size: 30, weight: .bold, design: .rounded)) .tabItem {
                    Image(systemName: "circle.grid.3x3.fill")
                    Text("Browse")
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


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
        }
        .padding()
        .padding();
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

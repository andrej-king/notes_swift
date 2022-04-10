import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // MARK: - FUNCTION
    
    // MARK: - BODY
    
    var body: some View {
        Text("Hello, World!")
            .padding()
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

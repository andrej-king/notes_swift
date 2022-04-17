import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY
    
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    // MARK: - FUNCTION
    
    // update line count in main view
    func update() {
        lineCount = Int(value)
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER
            Slider(value: Binding(get: { // custom binding by change slider value
                self.value
            }, set: {newValue in
                if newValue > 0 {
                    self.value = newValue
                    self.lineCount = Int(value)
                }
            }), in: 0...4, step: 1)
                .accentColor(.accentColor)
                .onAppear(perform: {
                    value = Float(lineCount)
                })
        } //: VSTACK
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

import SwiftUI

struct PatternManagerView: View {
    var body: some View {
        Text("Pattern Manager")
            .font(.largeTitle)
            .padding()
            .backgroundGradient() // Apply gradient here
    }
}

struct PatternManagerView_Previews: PreviewProvider {
    static var previews: some View {
        PatternManagerView()
    }
}

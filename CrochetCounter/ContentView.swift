import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    NavigationLink(destination: RowCounterView()) {
                        Text("Row Counter")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.pink.opacity(0.7))
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: PatternManagerView()) {
                        Text("Pattern Manager")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.pink.opacity(0.7))
                            .foregroundColor(.white)
                            .cornerRadius(20)
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

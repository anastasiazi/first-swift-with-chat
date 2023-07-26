import SwiftUI

struct RowCounterView: View {
    @State private var rowCount = 0
    var body: some View {
        VStack {
            Text("Rows: \(rowCount)")
                .font(.largeTitle)
                .padding()
            HStack {
                Button(action: {
                    self.rowCount += 1
                }) {
                    Text("Increase Row")
                        .font(.title)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity) // Make button take up as much space as it can
                        .background(Color.pink.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(20) // Increase corner radius here
                }
                Button(action: {
                    self.rowCount -= 1
                }) {
                    Text("Decrease Row")
                        .font(.title)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity) // Make button take up as much space as it can
                        .background(Color.pink.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(20) // Increase corner radius here
                }
            }
            .padding(.horizontal) // Add horizontal padding to HStack
            Button(action: {
                self.rowCount = 0
            }) {
                Text("Reset")
                    .font(.title)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity) // Make button take up as much space as it can
                    .background(Color.pink.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(20) // Increase corner radius here
            }
            .padding(10)
        }
        .backgroundGradient() // Apply gradient here
    }
}

struct RowCounterView_Previews: PreviewProvider {
    static var previews: some View {
        RowCounterView()
    }
}

import SwiftUI

struct BackgroundGradient: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            content
        }
    }
}

extension View {
    func backgroundGradient() -> some View {
        self.modifier(BackgroundGradient())
    }
}

import SwiftUI

@available(iOS 13.0, *)
struct AdaptiveUIExample: View {
    var body: some View {
        AdaptiveUI {
            RoundedRectangle(cornerRadius: 40.0, style: .continuous)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(red: 224 / 255.0, green: 21 / 255.0, blue: 90 / 255.0, opacity: 1), .pink]),
                        startPoint: .topLeading, endPoint: .bottomTrailing
                    )
                )
                .frame(maxHeight: 400)
            
            VStack {
                Text("Title")
                    .bold()
                    .font(.title)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding()
    }
}

@available(iOS 13.0, *)
struct AdaptiveUIExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AdaptiveUIExample()
                .previewLayout(.fixed(width: 568, height: 420))
            AdaptiveUIExample()
                .previewLayout(.fixed(width: 320, height: 528))
        }
    }
}

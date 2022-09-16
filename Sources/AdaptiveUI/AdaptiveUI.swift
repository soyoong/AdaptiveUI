//
//  AdaptiveUI.swift
//
//
//  Created by Hau Nguyen on 16/09/2022.
//

import SwiftUI

@available(iOS 13.0, *)
public struct AdaptiveUI<Content: View>: View {
    @Environment(\.sizeCategory) var sizeCategory: ContentSizeCategory
    
    @State private var availableWidth: CGFloat = 0
    var threshold: CGFloat
    var content: Content
    
    public init(threshold: CGFloat = 500, @ViewBuilder content: () -> Content) {
        self.threshold = threshold
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            Color.clear
                .frame(height: 1)
                .readSize { size in
                    availableWidth = size.width
                }
            
            if availableWidth > threshold {
                HStack {
                    content
                }
            } else {
                VStack {
                    content
                }
            }
        }
    }
}


@available(iOS 13.0, *)
private struct AdaptiveUI_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AdaptiveUIExample()
                .previewLayout(.fixed(width: 568, height: 420))
            AdaptiveUIExample()
                .previewLayout(.fixed(width: 320, height: 528))
        }
    }
}

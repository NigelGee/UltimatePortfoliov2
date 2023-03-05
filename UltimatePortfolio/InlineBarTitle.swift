//
//  InlineBarTitle.swift
//  UltimatePortfolio
//
//  Created by Nigel Gee on 02/03/2023.
//

import SwiftUI

struct InlineBarTitle: ViewModifier {
    func body(content: Content) -> some View {
        #if os(macOS)
            content
        #else
            content
                .navigationBarTitleDisplayMode(.inline)
        #endif
    }
}

extension View {
    var inlineBarTitle: some View {
        self.modifier(InlineBarTitle())
    }
}

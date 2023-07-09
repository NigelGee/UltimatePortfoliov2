//
//  UserFilterRow.swift
//  UltimatePortfolio
//
//  Created by Nigel Gee on 09/07/2023.
//

import SwiftUI

struct UserFilterRow: View {
    let filter: Filter
    var rename: (Filter) -> Void
    var delete: (Filter) -> Void

    var body: some View {
        NavigationLink(value: filter) {
            Label(filter.name, systemImage: filter.icon)
                .badge(filter.activeIssuesCount)
                .contextMenu {
                    Button {
                        rename(filter)
                    } label: {
                        Label("Rename", systemImage: "pencil")
                    }

                    Button(role: .destructive) {
                        delete(filter)
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
                .accessibilityElement()
                .accessibilityLabel(filter.name)
                .accessibilityHint("\(filter.activeIssuesCount) issues")
        }
    }
}

struct UserFilterRow_Previews: PreviewProvider {
    static var previews: some View {
        UserFilterRow(filter: .all) { _ in } delete: { _ in }
    }
}

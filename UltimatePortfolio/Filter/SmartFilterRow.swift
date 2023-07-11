//
//  SmartFilterRow.swift
//  UltimatePortfolio
//
//  Created by Nigel Gee on 09/07/2023.
//

import SwiftUI

struct SmartFilterRow: View {
    let filter: Filter

    var body: some View {
        NavigationLink(value: filter) {
            Label(LocalizedStringKey(filter.name), systemImage: filter.icon)
        }
    }
}

struct SmartFilterRow_Previews: PreviewProvider {
    static var previews: some View {
        SmartFilterRow(filter: .all)
    }
}

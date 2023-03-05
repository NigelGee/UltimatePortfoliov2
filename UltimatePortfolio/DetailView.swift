//
//  DetailView.swift
//  UltimatePortfolio
//
//  Created by Nigel Gee on 19/02/2023.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var dataController: DataController

    var body: some View {
        VStack {
            if let issue = dataController.selectedIssue {
                IssueView(issue: issue)
                    .padding()
            } else {
                NoIssueView()
            }
        }
        .navigationTitle("Details")
        .inlineBarTitle
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

//
//  ContentView.swift
//  Split_Bill
//
//  Created by Rithika on 22/04/26.
//

import SwiftUI

/// The main SwiftUI view for the group bill splitter app, showing the list of people, add/remove controls, and totals.
struct ContentView: View {
    /// The view model managing the bill calculation logic and people list.
    @StateObject private var viewModel = BillCalculatorViewModel()

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach($viewModel.people) { $person in
                        PersonShareRow(person: $person)
                    }
                    .onDelete(perform: viewModel.removePerson)
                }
                .listStyle(.plain)

                HStack {
                    Button(action: {
                        viewModel.addPerson()
                    }) {
                        Label("Add Person", systemImage: "plus")
                    }
                    Spacer()
                }
                .padding(.horizontal)

                Divider()

                VStack(alignment: .leading, spacing: 8) {
                    Text(String(format: "Total Bill: $%.2f", viewModel.totalBill))
                    Text(String(format: "Total Tip: $%.2f", viewModel.totalTip))
                    Text(String(format: "Grand Total: $%.2f", viewModel.grandTotal))
                        .bold()
                }
                .padding()
            }
            .navigationTitle("Group Bill Splitter")
        }
        .onAppear {
            // Pre-fill test case for validation
            if viewModel.people.isEmpty {
                viewModel.people = [
                    PersonShare(name: "Person A", amount: 40, tipPercent: 15),
                    PersonShare(name: "Person B", amount: 60, tipPercent: 20)
                ]
            }
        }
    }
}

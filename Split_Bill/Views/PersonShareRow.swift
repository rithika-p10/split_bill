//
//  PersonShareRow.swift
//  Split_Bill
//
//  Created by Rithika on 22/04/26.
//

import SwiftUI

/// A SwiftUI view for editing a single person's share, including name, amount, tip, and showing their total.
struct PersonShareRow: View {
    /// Binding to the `PersonShare` being edited.
    @Binding var person: PersonShare

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField("Name", text: $person.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                Text(String(format: "Total: $%.2f", person.totalWithTip))
                    .bold()
            }
            HStack {
                Text("Amount: $")
                TextField("0.00", value: $person.amount, format: .number)
                    .frame(width: 80)
                    .keyboardType(.decimalPad)
                Spacer()
                Text("Tip %:")
                TextField("0", value: $person.tipPercent, format: .number)
                    .frame(width: 50)
                    .keyboardType(.numberPad)
            }
        }
        .padding(.vertical, 4)
    }
}

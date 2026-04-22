//
//  BillCalculatorViewModel.swift
//  Split_Bill
//
//  Created by Rithika on 22/04/26.
//

import Foundation
import Combine
import SwiftUI

/// ViewModel that manages the list of people and performs bill calculations.
class BillCalculatorViewModel: ObservableObject {
    /// The array of people sharing the bill.
    @Published var people: [PersonShare] = []

    /// Adds a new person with default values to the bill.
    func addPerson() {
        people.append(PersonShare(name: "", amount: 0, tipPercent: 0))
    }

    /// Removes a person or people at the specified offsets.
    /// - Parameter offsets: The index set of people to remove.
    func removePerson(at offsets: IndexSet) {
        people.remove(atOffsets: offsets)
    }

    /// Updates the details of a person at a specific index.
    /// - Parameters:
    ///   - person: The updated `PersonShare` object.
    ///   - index: The index of the person to update.
    func updatePerson(_ person: PersonShare, at index: Int) {
        guard people.indices.contains(index) else { return }
        people[index] = person
    }

    /// The total base bill amount (sum of all individual amounts, before tips).
    var totalBill: Double {
        people.reduce(0) { $0 + $1.amount }
    }

    /// The total tip amount (sum of all individual tips).
    var totalTip: Double {
        people.reduce(0) { $0 + ($1.amount * $1.tipPercent / 100) }
    }

    /// The grand total (sum of all individual totals, including tips).
    var grandTotal: Double {
        people.reduce(0) { $0 + $1.totalWithTip }
    }
}

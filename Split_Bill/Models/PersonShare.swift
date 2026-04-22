//
//  PersonShare.swift
//  Split_Bill
//
//  Created by Rithika on 22/04/26.
//

import Foundation

/// Represents an individual person's share of a bill, including their name, amount owed, and tip percentage.
struct PersonShare: Identifiable, Hashable {
    /// Unique identifier for the person.
    let id = UUID()
    /// The person's name.
    var name: String
    /// The base amount owed by the person (before tip).
    var amount: Double
    /// The tip percentage to apply to the person's amount.
    var tipPercent: Double

    /// The total amount owed by the person, including tip.
    var totalWithTip: Double {
        amount + (amount * tipPercent / 100)
    }
}

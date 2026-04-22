//
//  Split_BillTests.swift
//  Split_BillTests
//
//  Created by Rithika on 22/04/26.
//

import XCTest
@testable import Split_Bill

final class BillCalculatorViewModelTests: XCTestCase {

    func personWith40AmountAnd15PercentTip_totalWithTipIs46() {
        let viewModel = BillCalculatorViewModel()
        viewModel.addPerson()
        var person = viewModel.people[0]
        person.name = "Person A"
        person.amount = 40
        person.tipPercent = 15
        viewModel.updatePerson(person, at: 0)
        XCTAssertEqual(viewModel.people[0].totalWithTip, 46.00, accuracy: 0.01)
    }

    func personWith60AmountAnd20PercentTip_totalWithTipIs72() {
        let viewModel = BillCalculatorViewModel()
        viewModel.addPerson()
        var person = viewModel.people[0]
        person.name = "Person B"
        person.amount = 60
        person.tipPercent = 20
        viewModel.updatePerson(person, at: 0)
        XCTAssertEqual(viewModel.people[0].totalWithTip, 72.00, accuracy: 0.01)
    }

    func personWithZeroTip_totalWithTipEqualsAmount() {
        let viewModel = BillCalculatorViewModel()
        viewModel.addPerson()
        var person = viewModel.people[0]
        person.name = "Person C"
        person.amount = 100
        person.tipPercent = 0
        viewModel.updatePerson(person, at: 0)
        XCTAssertEqual(viewModel.people[0].totalWithTip, 100.00, accuracy: 0.01)
    }

    func twoPeople_grandTotalIs118() {
        let viewModel = BillCalculatorViewModel()
        // Person A
        viewModel.addPerson()
        var personA = viewModel.people[0]
        personA.name = "Person A"
        personA.amount = 40
        personA.tipPercent = 15
        viewModel.updatePerson(personA, at: 0)
        // Person B
        viewModel.addPerson()
        var personB = viewModel.people[1]
        personB.name = "Person B"
        personB.amount = 60
        personB.tipPercent = 20
        viewModel.updatePerson(personB, at: 1)
        XCTAssertEqual(viewModel.grandTotal, 118.00, accuracy: 0.01)
    }
}

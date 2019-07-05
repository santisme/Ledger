//
//  ValueConverterTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 04/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class ValueConverterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConvertToSameCurrency() {
        let dollar = Currency(code: "USD")
        let five = Value(value: 5, currency: dollar)
        XCTAssertEqual(five, HumbleConverter.shared.convert(value: five, toCurrency: dollar))
    }

    func testConvertToDifferentCurrency() {
        let dollar = Currency(code: "USD")
        let euro = Currency(code: "EUR")
        
        let five = Value(value: 5, currency: dollar)
        let ten = Value(value: 10, currency: euro)
        
        XCTAssertEqual(five, HumbleConverter.shared.convert(value: ten, toCurrency: dollar))
    }
}

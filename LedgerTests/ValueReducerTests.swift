//
//  ValueReducerTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 05/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class ValueReducerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValueReducerReduce() {
        let fiveEuros = Value(value: 5, currency: "EUR")
        let twoEuros = Value(value: 2, currency: "EUR")
        let sixDollars = Value(value: 6, currency: "USD")
        
        XCTAssertEqual([fiveEuros, twoEuros, sixDollars].reduce(toCurrency: Currency(code: "EUR")), Value(value: 10, currency: "EUR"))
        
    }

}

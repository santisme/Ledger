//
//  CurrencyTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class CurrencyTests: XCTestCase {

    var euro: Currency!
    var usd: Currency!

    override func setUp() {
        euro = Currency(code: "EUR")
        usd = Currency(code: "USD")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCurrencyExistence() {
        XCTAssertNotNil(euro)
    }
    
    func testCurrencyNameCheckRawValue() {
        XCTAssertEqual(Currency(code: "eUr").code, "EUR")
    }
    
    func testCurrencyEquality() {
        XCTAssertNotEqual(euro, usd)
        
        XCTAssertEqual(euro, Currency(code: "EUR"))
    }
    
    func testCurrencyDebugDescription() {
        XCTAssertEqual(Currency(code: "EUR").debugDescription, "Currency: EUR")
    }
}

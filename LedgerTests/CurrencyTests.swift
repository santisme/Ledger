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
    
    override func setUp() {
        euro = Currency(name: .euro)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCurrencyExistence() {
        XCTAssertNotNil(euro)
    }
    
    func testCurrencyNameCheckRawValue() {
//        let dollar = Currency(name: .usDollar)
        XCTAssertEqual(euro.name.rawValue, "Euro")
    }
}

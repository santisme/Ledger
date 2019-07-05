//
//  ValueTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class ValueTests: XCTestCase {

    var value1: Value!
    var value2: Value!
    
    override func setUp() {
        value1 = Value(value: 20.0, currency: Currency(code: "USD"))
        value2 = Value(value: 15.5, currency: Currency(code: "USD"))
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValueExistence() {
        XCTAssertNotNil(value1)
        XCTAssertNotNil(Value(value: 50.0, currency: "EUR"))
    }
    
    func testValueLessThan() {
        XCTAssertLessThan(value2, value1)
    }

    func testValueGreatThan() {
        XCTAssertLessThan(value2, value1)
    }
    
    func testValueEquality() {
        // Test Equatable
        XCTAssertEqual(value1, value1)
        
        // Test Identity
        let dummyValue = Value(value: 20, currency: "USD")
        XCTAssertEqual(value1, dummyValue)
        
        // Test Not Equatable
        XCTAssertNotEqual(value1, value2)
        XCTAssertNotEqual(value1, Value(value: 20.0, currency: "EUR"))
    }
}

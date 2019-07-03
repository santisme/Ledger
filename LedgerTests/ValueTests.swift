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
        value1 = Value(value: 20.5, currency: Currency(name: .usDollar))
        value2 = Value(value: 15.5, currency: Currency(name: .usDollar))
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValueExistence() {
        XCTAssertNotNil(value1)
    }
    
    
    func testValueLessThan() {
        XCTAssertLessThan(value2, value1)
    }

    func testValueGreatThan() {
        XCTAssertLessThan(value2, value1)
    }
    
    func testValueEquatable() {
        // Test Equatable
        XCTAssertEqual(value1, value1)
        
        // Test Identity
        let dummyValue = Value(value: 20.5, currency: Currency(name: .usDollar))
        XCTAssertEqual(value1, dummyValue)
        
        // Test Not Equatable
        XCTAssertNotEqual(value1, value2)
        
        
    }
}

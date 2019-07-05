//
//  AccountingRecordTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class AccountingRecordTests: XCTestCase {

    var record1: AccountingRecord!
    var record2: AccountingRecord!
    var record3: AccountingRecord!
    var record4: AccountingRecord!
    var value1: Value!
    
    override func setUp() {
        value1 = Value(value: 10.3, currency: "GBP")
        record1 = AccountingRecord.cashRecord(value: value1)
        record2 = AccountingRecord.inventoryRecord(value: Value(value: 5.0, currency: Currency(code: "EUR")))
        record3 = AccountingRecord.cashRecord(value: Value(value: 1005.5, currency: Currency(code: "GBP")))
        record4 = AccountingRecord.cashRecord(value: value1)

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAccountingRecordExistence() {
        XCTAssertNotNil(record1)
        XCTAssertNotNil(record3)
    }
    
    func testAccountingRecordEquality() {
        // Compare value
        XCTAssertEqual(record1, record1)
        
        // Compare Identity
        XCTAssertEqual(record1, record4)
        
        // Compare Not Equals
        XCTAssertNotEqual(record1, record2)
    }
    
    func testAccountingRecordHashable() {
        XCTAssertEqual(record1.hashValue, record1.hashValue)
        
        XCTAssertEqual(record1.hashValue, record4.hashValue)
        
        XCTAssertNotEqual(record1.hashValue, record2.hashValue)
    }
    
    func testAccountingRecordTagCount() {
        XCTAssertEqual(record3.tags.count, 1)
    }
}

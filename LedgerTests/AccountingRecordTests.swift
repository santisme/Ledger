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

    var tag1: Tag!
    var tag2: Tag!
    
    override func setUp() {
        tag1 = Tag(name: .cash)
        tag2 = Tag(name: .earnings)
        record1 = AccountingRecord(value: Value(value: 10.3, currency: Currency(name: .bPound)), tags: tag1, category: RecordCategory(name: .assets))
        record2 = AccountingRecord(value: Value(value: 5.0, currency: Currency(name: .euro)), tags: tag1, category: RecordCategory(name: .assets))
        record3 = AccountingRecord(value: Value(value: 1005.5, currency: Currency(name: .bPound)), tags: tag1, tag2, category: RecordCategory(name: .equity))

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAccountingRecordExistence() {
        XCTAssertNotNil(record1)
        XCTAssertNotNil(record3)
    }
    
    func testAccountingRecordEquatable() {
        // Compare value
        XCTAssertEqual(record1, record1)
        
        // Compare Identity
        let dummyRecord = AccountingRecord(value: Value(value: 10.3, currency: Currency(name: .bPound)), tags: Tag(name: .cash), category: RecordCategory(name: .assets))
        XCTAssertEqual(record1, dummyRecord)
        
        // Compare Not Equals
        XCTAssertNotEqual(record1, record2)
    }
    
    func testAccountingRecordTagCount() {
        XCTAssertEqual(record3.tags.count, 2)
    }
}

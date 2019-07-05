//
//  RecordCategoryTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class RecordCategoryTests: XCTestCase {
    
    override func setUp() {
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTagExistence() {
        for each in RecordCategory.allCases {
            XCTAssertNotNil(each)
        }
    }
    
    func testTagEquality() {
        XCTAssertEqual(RecordCategory.assets, RecordCategory.assets)
        XCTAssertNotEqual(RecordCategory.assets, RecordCategory.equity)
    }
    
    func testTagHashable() {
        XCTAssertEqual(RecordCategory.assets.hashValue, RecordCategory.assets.hashValue)
        XCTAssertNotEqual(RecordCategory.assets.hashValue, RecordCategory.equity.hashValue)
        
    }
}

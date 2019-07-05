//
//  TagTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class TagTests: XCTestCase {
    
    override func setUp() {
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTagExistence() {
        for each in Tag.allCases {
            XCTAssertNotNil(each)
        }
    }

    func testTagEquality() {
        XCTAssertEqual(Tag.cash, Tag.cash)
        XCTAssertNotEqual(Tag.cash, Tag.earnings)
    }
    
    func testTagHashable() {
        XCTAssertEqual(Tag.cash.hashValue, Tag.cash.hashValue)
        XCTAssertNotEqual(Tag.cash.hashValue, Tag.earnings.hashValue)
        
    }
}

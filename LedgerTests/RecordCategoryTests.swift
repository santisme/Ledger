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

    var assets: RecordCategory!
    
    override func setUp() {
        assets = RecordCategory(name: .assets)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRecordCategoryExistence() {
        XCTAssertNotNil(assets)
    }

    func testRecordCategoryNameRawValueEquals() {
        XCTAssertEqual(assets.name.rawValue, "Assets")
    }
    
    func testRecordCategoryNameEquals() {
        let dummyRecordCategory = RecordCategory(name: .assets)
        XCTAssertEqual(assets, dummyRecordCategory)
    }
}

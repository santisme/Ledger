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

    var cash: Tag!
    
    override func setUp() {
        cash = Tag(name: .cash)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTagExistence() {
        XCTAssertNotNil(cash)
    }

    func testTagNameRawValueEquals(){
        XCTAssertEqual(cash.name.rawValue, "Cash")
    }
    
    func testTagEquals() {
        let dummyTag = Tag(name: .cash)
        XCTAssertEqual(cash, dummyTag)
    }
}

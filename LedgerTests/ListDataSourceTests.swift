//
//  ListDataSourceTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 04/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class ListDataSourceTests: XCTestCase {

    var listDataSource: ListDataSource!

    override func setUp() {
        listDataSource = ListDataSource()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testListDataSourceExistence() {
        XCTAssertNotNil(listDataSource)
    }

    func testListDataSourceRecordsExistence() {
        XCTAssertNotNil(listDataSource.records)
    }
    
    func testListDataSourceRecordsCount() {
        XCTAssertEqual(listDataSource.records.count, 5)

    }
}

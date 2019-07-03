//
//  RepositoryTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest

class RepositoryTests: XCTestCase {

    var repository: LocalRepository!
    
    override func setUp() {
        repository = Repository.valueRepository
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRepositoryExistence() {
        XCTAssertNotNil(repository)
    }
    
    func testRepositoryValueCount() {
        XCTAssertEqual(repository.values.count, 5)
    }
    
}

//
//  RepositoryTests.swift
//  LedgerTests
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import XCTest
@testable import Ledger

class RepositoryTests: XCTestCase {

    var repository: LocalFactory!
    
    override func setUp() {
        repository = Repository.localFactory
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRepositoryExistence() {
        XCTAssertNotNil(repository)
    }

    func testRepositoryAllValuesExistence() {
        XCTAssertNotNil(repository.allValues)
    }

    func testRepositoryAllValuesCount() {
        XCTAssertEqual(repository.allValues().count, 4)
    }
    
    func testRepositoryNewValue() {
        let testValue = repository.newValue(price: 20.7, currency: Currency(code: "EUR"))
        XCTAssertNotNil(testValue)
        
        XCTAssertEqual(testValue.value, 20.7)
        
        XCTAssertEqual(testValue.currency.code, "EUR")
        
        let testValue2 = repository.newValue(price: -20.7, currency: Currency(code: "GBP"))
        XCTAssertNotNil(testValue2)
        
        XCTAssertEqual(testValue2.value, -20.7)
        
        XCTAssertEqual(testValue2.currency.code, "GBP")

    }
    
    func testRepositoryValuesFiltered() {
        let theFilter: LocalFactory.ValueFilter = {
            $0.currency.code == "EUR"
        }
        
        XCTAssertNotNil(repository.valuesFiltered(by: theFilter))
    }
}

//
//  Repository.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

final class Repository {
    // MARK: - Properties
    static let localFactory = LocalFactory()
}

protocol ValueRepository {
    typealias Values = [Value]
    typealias ValueFilter = (Value) -> Bool
    
    func newValue(price: Double, currency: Currency) -> Value
    func allValues() -> Values
    func valuesFiltered(by: ValueFilter)  -> Values
}

final class LocalFactory: ValueRepository {
    // MARK: - Properties
    private var values: Values {
        var retVar = Values()
        var dummyValue = newValue(price: 3.0, currency: Currency(code: "GBP"))
        retVar.append(dummyValue)
        dummyValue = newValue(price: 100.3, currency: Currency(code: "EUR"))
        retVar.append(dummyValue)
        dummyValue = newValue(price: -17.5, currency: Currency(code: "EUR"))
        retVar.append(dummyValue)
        dummyValue = newValue(price: 4000.85, currency: Currency(code: "USD"))
        retVar.append(dummyValue)
        return retVar
    }
    
    // MARK: - Methods
    func newValue(price: Double, currency: Currency) -> Value {
        return Value(value: price, currency: currency)
    }
    
    func allValues() -> LocalFactory.Values {
        return self.values
    }
    
    func valuesFiltered(by theFilter: LocalFactory.ValueFilter) -> LocalFactory.Values {
        return self.values.filter(theFilter)
    }
}

protocol RecordRepository {
    typealias AccountingRecords = [AccountingRecord]
    typealias RecordFilter = (AccountingRecord) ->Bool
    
//    func newRecord(value: Value, tags: Tag...,category: RecordCategory) -> AccountingRecord
    func allRecords() -> AccountingRecords
    func recordsFiltered(by: RecordFilter)  -> AccountingRecords
}

extension LocalFactory: RecordRepository {
    
    func allRecords() -> LocalFactory.AccountingRecords {
        return self.records
    }
    
    func recordsFiltered(by: (AccountingRecord) -> Bool) -> AccountingRecords {
        return self.allRecords().filter(by)
    }
    
    private var records: AccountingRecords {
        var retVar = AccountingRecords()
        
        retVar.append(AccountingRecord.cashRecord(value: Value(value: 10.3, currency: Currency(code: "GBP"))))
        retVar.append(AccountingRecord.earningRecord(value: Value(value: 5.0, currency: Currency(code: "EUR"))))
        retVar.append(AccountingRecord.initialInvestmentRecord(value: Value(value: 10.3, currency: Currency(code: "EUR"))))
        retVar.append(AccountingRecord.notePayableRecord(value: Value(value: 1005.5, currency: Currency(code: "GBP"))))
        retVar.append(AccountingRecord.inventoryRecord(value: Value(value: 10.3, currency: Currency(code: "EUR"))))

        return retVar
    }
    
}

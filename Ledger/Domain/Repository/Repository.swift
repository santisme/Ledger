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
    static let localRepository = LocalRepository()
}

protocol ValueRepository{
    typealias Values = [Value]
    typealias Filter = (Value) ->Bool
    func newValue(price: Double, currency: Currency) ->Value
    func allValues() ->Values
    func valuesFiltered(by: Filter)  -> Values
}

private class LocalRepository: ValueRepository {
    func newValue(price: Double, currency: Currency) -> Value {
        <#code#>
    }
    
    func allValues() -> Self.Values {
        <#code#>
    }
    
    func valuesFiltered(by: (Value) -> Bool) -> Self.Values {
        <#code#>
    }
    
    
}

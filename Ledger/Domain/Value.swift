//
//  Value.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

final class Value {
    
    // MARK: - Properties
    let value: Double
    let currency: Currency
    
    // MARK: - Inits
    init(value: Double, currency: Currency) {
        self.value = value
        self.currency = currency
    }

}

// MARK: - Extensions
extension Value: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.value)
        hasher.combine(self.currency)
    }
}

extension Value: Equatable {
    static func == (lhs: Value, rhs: Value) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

extension Value {
    func proxyForComparison() -> Double {
        return self.value
    }
}

extension Value: Comparable {
    static func < (lhs: Value, rhs: Value) -> Bool {
        return lhs.proxyForComparison() < rhs.proxyForComparison()
    }
    
    
}

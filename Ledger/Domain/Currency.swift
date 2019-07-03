//
//  Currency.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

typealias Currencies = Currency.Names

final class Currency {
    
    // MARK: - Properties
    let name: Names

    enum Names: String {
        case euro = "Euro"
        case usDollar = "US Dollar"
        case bPound = "British Pound"
    }

    // MARK: - Inits
    init(name: Currencies) {
        self.name = name
    }
}

// MARK: - Extensions
extension Currency: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.name)
    }
}

extension Currency: Equatable {
    static func == (lhs: Currency, rhs: Currency) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

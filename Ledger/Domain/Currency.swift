//
//  Currency.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

typealias ISO4217 = String

struct Currency {
    let code: ISO4217
    
    init(code: ISO4217) {
        self.code = code.uppercased()
    }
}

// MARK: - Extensions
extension Currency: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.code)
    }
}

extension Currency: Equatable {
    static func == (lhs: Currency, rhs: Currency) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

extension Currency: CustomDebugStringConvertible {
    var debugDescription: String {
        return "\(type(of: self)): \(self.code)"
    }
}

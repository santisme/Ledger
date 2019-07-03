//
//  RecordCategory.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

typealias Categories = RecordCategory.Categories

final class RecordCategory {
    
    // MARK: - Properties
    let name: Categories
    
    enum Categories: String {
        case assets = "Assets"
        case liabilities = "Liabilities"
        case equity = "Equity"
    }
    
    // MARK: - Inits
    init(name: Categories) {
        self.name = name
    }    
    
}

// MARK: - Extensions
extension RecordCategory: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.name)
    }
}

extension RecordCategory: Equatable {
    static func == (lhs: RecordCategory, rhs: RecordCategory) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

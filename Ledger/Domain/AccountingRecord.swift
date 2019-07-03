//
//  AccountingRecord.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation


final class AccountingRecord {
    
    // MARK: - Properties
    let value: Value
    var tags: Set<Tag>
    let category: RecordCategory
    
    // MARK: - Inits
    init(value: Value, tags: Tag..., category: RecordCategory) {
        self.value = value
        self.tags = []
        self.category = category
        
        tags.forEach { (tag) in
            self.tags.insert(tag)
        }
    }
    
}

// MARK: - Extensions
extension AccountingRecord: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.value)
        hasher.combine(self.tags)
        hasher.combine(self.category)
    }
    
    static func == (lhs: AccountingRecord, rhs: AccountingRecord) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

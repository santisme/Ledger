//
//  AccountingRecord.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

typealias Tags = Set<Tag>

class AccountingRecord {
    
    // MARK: - Properties
    let value: Value
    var tags: Tags
    let category: RecordCategory
    
    // MARK: - Inits
    fileprivate init(value: Value, tags: Tags, category: RecordCategory) {
        self.value = value
        self.tags = tags
        self.category = category
    }
    
    // Metodos Factory que crean las subclases especificas
    static func cashRecord(value: Value) -> AccountingRecord {
        return CashRecord(value: value, tags: .cash, category: .assets)
    }
    
    static func inventoryRecord(value: Value) -> AccountingRecord {
        return InventoryRecord(value: value, tags: .inventory, category: .assets)
    }

    static func notePayableRecord(value: Value) -> AccountingRecord {
        return InventoryRecord(value: value, tags: .notesPayable, category: .liabilities)
    }

    static func earningRecord(value: Value) -> AccountingRecord {
        return InventoryRecord(value: value, tags: .earnings, category: .equity)
    }

    static func initialInvestmentRecord(value: Value) -> AccountingRecord {
        return InventoryRecord(value: value, tags: .initialInvestment, category: .equity)
    }

}

fileprivate class CashRecord: AccountingRecord {
    
}

fileprivate class InventoryRecord: AccountingRecord {
    
}

fileprivate class notePayableRecord: AccountingRecord {
    
}

fileprivate class earningRecord: AccountingRecord {
    
}

fileprivate class initialInvestmentRecord: AccountingRecord {
    
}

// MARK: - Extensions
extension AccountingRecord: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.value)
        hasher.combine(self.tags)
        hasher.combine(self.category)
    }
    
    static func == (lhs: AccountingRecord, rhs: AccountingRecord) -> Bool {
        return (lhs.value, lhs.tags, lhs.category) == (rhs.value, rhs.tags, rhs.category)
    }
}

extension AccountingRecord {
    fileprivate convenience init(value: Value, tags: Tag..., category: RecordCategory) {
        self.init(value: value, tags: Set(tags), category: category)
    }
}

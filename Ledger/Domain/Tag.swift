//
//  Tag.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

typealias Tags = Tag.Tags

final class Tag {
    
    // MARK: - Properties
    let name: Tags
    
    enum Tags: String {
        case cash = "Cash"
        case notesPayable = "Note Payable"
        case earnings = "Earnings"
        case initialInvestment = "Initial Investment"
    }
    
    // MARK: - Inits
    init(name: Tags) {
        self.name = name
    }
    
}

// MARK: - Extensions
extension Tag: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.name)
    }
}

extension Tag: Equatable {
    static func == (lhs: Tag, rhs: Tag) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

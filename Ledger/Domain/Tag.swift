//
//  Tag.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 03/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

enum Tag: String, CaseIterable {
    case cash = "Cash"
    case notesPayable = "Note Payable"
    case earnings = "Earnings"
    case initialInvestment = "Initial Investment"
    case inventory = "Inventory"
}

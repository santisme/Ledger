//
//  ValueConverter.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 04/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

protocol ValueConverter {
    func convert(value: Value, toCurrency: Currency) -> Value
}

struct HumbleConverter: ValueConverter {
    // MARK: - Properties
    static let shared = HumbleConverter()
    let rate: Double
    
    // MARK: - Inits
    private init(){ self.rate = 0.5 }
    
    // MARK: - Methods
    func convert(value: Value, toCurrency: Currency) -> Value {
        
        if value.currency == toCurrency {
            return value
        }
        
        return (Value(value: value.value * rate, currency: toCurrency))
    }
    
    
}

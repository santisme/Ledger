//
//  Array+Values.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 05/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

extension Array where Element == Value {
    func reduce(toCurrency: Currency) -> Value {
        let startValue: Value = Value(value: 0.0, currency: toCurrency)
        return self.reduce(startValue) { (x, y) in
            let covertedValue = HumbleConverter.shared.convert(value: y, toCurrency: toCurrency)
            return Value(value: x.value + covertedValue.value, currency: toCurrency)
        }
    }
}

//
//  ValuePresenter.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 04/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import Foundation

protocol ValuePresenter {
    func present(value: Value) -> String
    // Añadir otras a medida que hagan falta
}

extension ValuePresenter {
    func present(value: Value) -> String {
        return "\(value.value) \(value.currency)"
    }
}

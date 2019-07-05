//
//  ListDataSource.swift
//  Ledger
//
//  Created by Santiago Sanchez merino on 04/07/2019.
//  Copyright © 2019 Santiago Sanchez merino. All rights reserved.
//

import UIKit

final class ListDataSource: NSObject {
    // MARK: - Properties
    let records: [AccountingRecord]
    
    // MARK: - Inits
    override init() {
        self.records = Repository.localFactory.allRecords()
    }
    
}

extension ListDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.records.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "reuseIdentifier"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) ?? UITableViewCell(style: .default, reuseIdentifier: cellId)
        
        cell.textLabel?.text = String(self.records[indexPath.row].value.value)
        return cell
    }
    
}


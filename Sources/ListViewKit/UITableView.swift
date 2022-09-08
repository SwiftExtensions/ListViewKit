//
//  UITableView.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

public extension UITableView {
    func register<CellClass: TableViewCellIdentifiable>(_ cellClass: CellClass.Type) {
        self.register(cellClass.self, forCellReuseIdentifier: cellClass.identifier)
    }
    
    func dequeueReusableCell<CellClass: TableViewCellIdentifiable>(_ cellClass: CellClass.Type, for indexPath: IndexPath) -> UITableViewCell {
        self.dequeueReusableCell(withIdentifier: cellClass.identifier, for: indexPath)
    }
    
    
}

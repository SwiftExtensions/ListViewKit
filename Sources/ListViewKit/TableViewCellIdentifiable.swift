//
//  TableViewCellIdentifiable.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

public protocol TableViewCellIdentifiable: UITableViewCell {
    static var identifier: String { get }
    
    
}

public extension TableViewCellIdentifiable {
    static var identifier: String { String(describing: type(of: self)) }
    
    
}

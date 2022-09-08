//
//  String.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

extension String: ListViewItemСompatible {
    public var title: String? { self }
    public var detail: String? { nil }
    public var style: UITableViewCell.CellStyle { .basic }
    
    
}

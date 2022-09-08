//
//  ListViewItemСompatible.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

public protocol ListViewItemСompatible {
    var title: String? { get }
    var detail: String? { get }
    var style: UITableViewCell.CellStyle { get }
    
    
}

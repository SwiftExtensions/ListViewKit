//
//  UITableViewCell.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

public extension UITableViewCell.CellStyle {
    /**
     A simple style for a cell with a text label (black and left-aligned) and an optional image view.
     */
    static let basic = UITableViewCell.CellStyle.default
    /**
     A style for a cell with a label on the left side of the cell with left-aligned and black text; on the right side is a label that has smaller blue text and is right-aligned. The Settings application uses cells in this style.
     */
    static let rightDetail = UITableViewCell.CellStyle.value1
    /**
     A style for a cell with a label on the left side of the cell with text that is right-aligned and blue; on the right side of the cell is another label with smaller text that is left-aligned and black. The Phone/Contacts application uses cells in this style.
     */
    static let leftDetail = UITableViewCell.CellStyle.value2
    
    
}

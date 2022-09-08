//
//  ListViewItem.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

public struct ListViewItem: ListViewItemСompatible {
    public let title: String?
    public let detail: String?
    public let style: UITableViewCell.CellStyle
    
    public init(title: String?, detail: String?, style: UITableViewCell.CellStyle) {
        self.title = title
        self.detail = detail
        self.style = style
    }
    
    public init(title: String?) {
        self.init(title: title, detail: nil, style: .basic)
    }
    
    public init() {
        self.init(title: nil)
    }
    
    
}

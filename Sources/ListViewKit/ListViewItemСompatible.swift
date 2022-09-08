//
//  ListViewItemСompatible.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

/**
 The protocol to which a ``ListView`` item should conform.
 */
public protocol ListViewItemСompatible {
    /**
     A title of a ``ListViewItem``.
     */
    var title: String? { get }
    /**
     A detail of a ``ListViewItem``.
     */
    var detail: String? { get }
    /**
     A
     [CellStyle](https://developer.apple.com/documentation/uikit/uitableviewcell/cellstyle)
     of a
     [UITableViewCell](https://developer.apple.com/documentation/uikit/uitableviewcell)
     of a ``ListViewItem``.
     */
    var style: UITableViewCell.CellStyle { get }
    
    
}

extension ListViewItemСompatible {
    public var title: String? {
        let title: String?
        if let custom = self as? CustomStringConvertible {
            title = custom.description
        } else if let debug = self as? CustomDebugStringConvertible {
            title = debug.debugDescription
        } else {
            title = nil
        }
        
        return title
    }
    public var detail: String? { nil }
    public var style: UITableViewCell.CellStyle { .basic }
    
    
}

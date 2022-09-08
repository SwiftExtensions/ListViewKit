//
//  ListViewItem.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

/**
 An item prameters of the ``ListView``.
 */
public struct ListViewItem: ListViewItemСompatible {
    /**
     A title of a ``ListViewItem``.
     */
    public let title: String?
    /**
     A detail of a ``ListViewItem``.
     */
    public let detail: String?
    /**
     A
     [CellStyle](https://developer.apple.com/documentation/uikit/uitableviewcell/cellstyle)
     of a
     [UITableViewCell](https://developer.apple.com/documentation/uikit/uitableviewcell)
     of a ``ListViewItem``.
     */
    public let style: UITableViewCell.CellStyle
    /**
     Creates an item with specified properties values.
     - Parameter title: A title of a ``ListViewItem``.
     - Parameter detail: A detail of a ``ListViewItem``.
     - Parameter style: A
     [CellStyle](https://developer.apple.com/documentation/uikit/uitableviewcell/cellstyle)
     of a
     [UITableViewCell](https://developer.apple.com/documentation/uikit/uitableviewcell)
     of a ``ListViewItem``.
     */
    public init(title: String?, detail: String?, style: UITableViewCell.CellStyle) {
        self.title = title
        self.detail = detail
        self.style = style
    }
    /**
     Creates an item with specified ``title`` value, `nil` ``detail`` property value and with `Basic`
     [CellStyle](https://developer.apple.com/documentation/uikit/uitableviewcell/cellstyle)
     of a
     [UITableViewCell](https://developer.apple.com/documentation/uikit/uitableviewcell).
     - Parameter title: A title of a ``ListViewItem``.
     */
    public init(title: String?) {
        self.init(title: title, detail: nil, style: .basic)
    }
    /**
     Creates an item with `nil` ``title`` and ``detail`` properties values and with `Basic`
     [CellStyle](https://developer.apple.com/documentation/uikit/uitableviewcell/cellstyle)
     of a
     [UITableViewCell](https://developer.apple.com/documentation/uikit/uitableviewcell).
     */
    public init() {
        self.init(title: nil)
    }
    
    
}

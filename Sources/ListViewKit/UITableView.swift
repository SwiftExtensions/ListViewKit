//
//  UITableView.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

extension UITableView {
    /**
     A syntacic sugar to dequeue reusable cell of a ``ListView``.
     - Parameter listViewItem: A list view item.
     - Returns: A reusable cell  for a specified list view item.
     */
    func dequeueReusableCell(for listViewItem: ListViewItemСompatible) -> UITableViewCell {
        let identifier = String(reflecting: listViewItem.style)
        let reusableCell = self.dequeueReusableCell(withIdentifier: identifier)
        
        return reusableCell ?? UITableViewCell(style: listViewItem.style, reuseIdentifier: identifier)
    }
    
    
}

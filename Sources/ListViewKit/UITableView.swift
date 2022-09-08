//
//  UITableView.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

extension UITableView {
    func dequeueReusableCell(for listView: ListViewItemСompatible) -> UITableViewCell {
        let identifier = String(reflecting: listView.style)
        let reusableCell = self.dequeueReusableCell(withIdentifier: identifier)
        
        return reusableCell ?? UITableViewCell(style: listView.style, reuseIdentifier: identifier)
    }
    
    
}

//
//  ListView.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

public class ListView: UITableView {
    
    public var listViewItems = [String]()
    
    public override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        self.initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.initialSetup()
    }
    
    private func initialSetup() {
        self.dataSource = self
        self.delegate = self
        
        self.register(UITableViewCell.self)
    }
    

}

// MARK: UITableViewDataSource

extension ListView: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.listViewItems.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(UITableViewCell.self, for: indexPath)
        let item = self.listViewItems[indexPath.item]
        cell.textLabel?.text = item
        
        return cell
    }
    
    
}

// MARK: UITableViewDelegate

extension ListView: UITableViewDelegate {
    
}

//
//  ListView.swift
//  
//
//  Created by Александр Алгашев on 08.09.2022.
//

import UIKit

/**
 A view that presents data using rows in a single column.
 
 It is a syntactic sugar for a
 [UIKit](https://developer.apple.com/documentation/uikit)
 [UITableView](https://developer.apple.com/documentation/uikit/uitableview).
 
 ``` swift
 import ListViewKit
 
 let listView = ListView()
 // Set list of items...
 listView.listViewItems = ITEMS
 // Or handle indexPath...
 listView.numberOfItems(COUNT) { indexPath in
    // Handle indexPath and return item
 
 } actionForSelectedRowAt: { indexPath in
    // Set action for selected indexPath
 
 }
 // Reload data
 listView.reloadData()
 ```
 */
public class ListView: UITableView {
    /**
     An items to present in the ``ListView``.
     
     Resets `numberOfItems` and `configureItemForRowAt` properties specified in ``numberOfItems(_:configureItemForRowAt:actionForSelectedRowAt:)`` method.
     */
    public var listViewItems: [String]? {
        didSet {
            self.numberOfItems = nil
            self.itemForRowAt = nil
        }
    }
    /**
     A number of items to present in the listView.
     
     Sets with ``numberOfItems(_:configureItemForRowAt:actionForSelectedRowAt:)`` method.
     */
    private var numberOfItems: Int?
    /**
     Configurates an item for row at specific indexPath to present in the listView.
     
     Sets with ``numberOfItems(_:itemForRowAt:)`` method.
     */
    private var itemForRowAt: ((IndexPath) -> String)?
    /**
     Handles a selected row.
     
     Sets with ``numberOfItems(_:configureItemForRowAt:actionForSelectedRowAt:)``
     or ``actionForSelectedRowAt(_:)`` methods.
     */
    private var actionForSelectedRowAt: ((IndexPath) -> Void)?
    
    /**
     Creates and returns a list view with the specified frame and style.
     - Parameter frame: A rectangle specifying the initial location and size of the table view in its superview’s coordinates.
     The frame of the table view changes as table cells are added and deleted.
     - Parameter style: A constant that specifies the style of the table view. For a list of valid styles, see UITableView.Style.
     */
    public override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        self.initialSetup()
    }
    /**
     Creates a list view object from data in an unarchiver.
     */
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.initialSetup()
    }
    /**
     Initial setup while creating a list view object.
     */
    private func initialSetup() {
        self.dataSource = self
        self.delegate = self
        
        self.register(UITableViewCell.self)
    }
    /**
     Configurates an item for row at specific indexPath to present in the listView.
     
     Resets ``listViewItems`` value.
     - Parameter count: A number of items to present in the listView.
     - Parameter configureItemForRowAt: A closure to configurate an item for row at specific indexPath to present in the listView.
     - Parameter actionForSelectedRowAt: A closure to handle a selected row.
     
     ``` swift
     import ListViewKit
     
     let listView = ListView()
     // Handle indexPath...
     listView.numberOfItems(COUNT) { indexPath in
        // Handle indexPath and return item
     
     } actionForSelectedRowAt: { indexPath in
        // Set action for selected indexPath
     
     }
     // Reload data
     listView.reloadData()
     ```
     */
    public func numberOfItems(
        _ count: Int,
        configureItemForRowAt: @escaping (IndexPath) -> String,
        actionForSelectedRowAt: ((IndexPath) -> Void)? = nil)
    {
        self.listViewItems = nil
        self.numberOfItems = count
        self.itemForRowAt = configureItemForRowAt
        if let actionForSelectedRowAt = actionForSelectedRowAt {
            self.actionForSelectedRowAt = actionForSelectedRowAt
        }
    }
    /**
     Handles a selected row.
     - Parameter action: A closure to handle a selected row.
     */
    public func actionForSelectedRowAt(_ action: ((IndexPath) -> Void)?) {
        self.actionForSelectedRowAt = action
    }
    

}

// MARK: UITableViewDataSource

extension ListView: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.listViewItems?.count ?? self.numberOfItems ?? 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(UITableViewCell.self, for: indexPath)
        let item = self.listViewItems?[indexPath.item] ?? self.itemForRowAt?(indexPath)
        cell.textLabel?.text = item
        
        return cell
    }
    
    
}

// MARK: UITableViewDelegate

extension ListView: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.actionForSelectedRowAt?(indexPath)
    }
    
    
}
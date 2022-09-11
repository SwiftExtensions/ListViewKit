# ListViewKit

A syntactic sugar for a
[UIKit](https://developer.apple.com/documentation/uikit)
[UITableView](https://developer.apple.com/documentation/uikit/uitableview).

## Confugure ListViewItems
### Example of usage
 
``` swift
import ListViewKit
 
let listView = ListView()
// Set list of items...
listView.listViewItems = ITEMS

// Or handle indexPath...
listView.numberOfItems(COUNT) { indexPath in
    // Handle indexPath and return item
 
}
// Reload data
listView.reloadData()
```
## Confugure ListViewItemCell
### Example of usage
 
``` swift
import ListViewKit
 
let listView = ListView()
// Set list of items
listView.listViewItems = ITEMS
// Configure cells
listView.refineCell { cell, indexPath in
    // Configure cell at indexPath
 
}
// Reload data
listView.reloadData()
```
## Handle ListView Selecting
### Example of usage
 
``` swift
import ListViewKit
 
let listView = ListView()
// Set list of items
listView.listViewItems = ITEMS
// Configure cells
listView.refineCell { cell, indexPath in
    // Configure cell at indexPath
 
}.actionForSelectedRowAt { indexPath in
    // Set action for selected indexPath
 
}
// Reload data
listView.reloadData()
```
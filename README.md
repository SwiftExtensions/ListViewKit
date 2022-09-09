# ListViewKit

A syntactic sugar for a
[UIKit](https://developer.apple.com/documentation/uikit)
[UITableView](https://developer.apple.com/documentation/uikit/uitableview).

## Example of usage
 
``` swift
import ListViewKit
 
let listView = ListView()
// Set list of items...
listView.listViewItems = ITEMS

// Or handle indexPath...
listView.numberOfItems(COUNT) { indexPath in
    // Handle indexPath and return item
 
}.refineCell { cell, indexPath in
    // Configure cell at indexPath
 
}.actionForSelectedRowAt { indexPath in
    // Set action for selected indexPath
 
}
// Reload data
listView.reloadData()
```

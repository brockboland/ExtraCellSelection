This app demonstrates a bug in iOS: selecting a collection view cell will also select (or at least highlight) table view cells in a table view that's inside the collection view cell.

Click on the colored bar in the collection view cell to select the collection view cell. This will highlight all visible cells in the table view, which is not the expected behavior.

The code includes several comments beginning with NOTE to explain what's going on.

Ultimately, the `setSelected:` method on the UICollectionViewCell seems to be the problem. If the cell subclass in use does NOT call that method on the superclass, this problem does not manifest itself. As such, I'm inclined to believe that the UICollectionViewCell implementation of `setSelected:` does something like a recursive walk through its subviews to set them selected and/or highlighted.

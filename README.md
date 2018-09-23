# ChildVCExample_iOS
An example of adding a CollectionView as a child to the cell of a TableViewController

There are lots of cases in your app design when you need a layout/view which scrolls vertically along with subviews which scrolls horizontally as well(example: AppStore, Instagram Home Page and many more).
In this case,we can use a TableViewController and add CollectionView in the tableView cells. 

Here, I have simplified the additional of CollectionView, by creating a container Controller i.e TableViewController and a child controller i.e CollectionViewController.
I have added the childVC to the parentVC/Container, which makes the child controller reusable and easily decouples the code.
Note: I haven't use Storyboard in the demo, all the design have been made programmatically + Xib (for cells)

Language: Swift
Version: 4.2
iOS: 12

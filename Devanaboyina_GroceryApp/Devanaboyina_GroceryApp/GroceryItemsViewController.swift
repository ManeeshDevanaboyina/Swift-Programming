//
//  GroceryItemsViewController.swift
//  Devanaboyina_GroceryApp
//
//  Created by Devanaboyina,Maneesh on 4/12/22.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items_Gro.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = groceryItemsTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel?.text = sectionScreen!.items_Array[indexPath.row].itemName
        return cell
        
    }
    var sectionScreen : Grocery?

    var items_Gro = grocery_Items
    
    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = sectionScreen?.section
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemInfoSegue"{
            let destination = segue.destination as! ItemInfoViewController
            destination.info = sectionScreen!.items_Array[(groceryItemsTableView.indexPathForSelectedRow?.row)!]
        }
}
}

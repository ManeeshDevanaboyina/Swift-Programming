//
//  GrocerySectionsViewController.swift
//  Devanaboyina_GroceryApp
//
//  Created by Devanaboyina,Maneesh on 4/12/22.
//

import UIKit

class GrocerySectionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Items_Grocery.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = Items_Grocery[indexPath.row].section
        return cell
    }
    var Items_Grocery = grocery_Items

    override func viewDidLoad() {
        super.viewDidLoad()

        super.viewDidLoad()
        self.title = "Grocery Sections"
        // Do any additional setup after loading the view.
        grocerySectionsTableView.delegate = self
        grocerySectionsTableView.dataSource = self
    }
    
    @IBOutlet weak var grocerySectionsTableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemsSegue"{
            let destination = segue.destination as! GroceryItemsViewController
            destination.sectionScreen = Items_Grocery[(grocerySectionsTableView.indexPathForSelectedRow?.row)!]
        }
    }


}

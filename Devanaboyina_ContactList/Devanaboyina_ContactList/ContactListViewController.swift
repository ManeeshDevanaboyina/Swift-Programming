//
//  ViewController.swift
//  Devanaboyina_ContactList
//
//  Created by Devanaboyina,Maneesh on 4/26/22.
//

import UIKit

class ContactListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactsTable.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
                //Assign the data into the cell
        cell.textLabel?.text = ContactArray[indexPath.row].first
                return cell
    }
   
    
 
    @IBOutlet weak var contactsTable: UITableView!
    var ContactArray = contacts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        contactsTable.delegate = self
                //Assign the datasource
        contactsTable.dataSource = self
    }
    
    
    
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let transition = segue.identifier
         if transition == "detailsSegue"{
             let destination = segue.destination as!  ContactDetailViewController
             
             //Assigning product to the destination
            // destination.details = ContactArray[(contactsTable.indexPathForSelectedRow?.row)!]
         }
    }
}


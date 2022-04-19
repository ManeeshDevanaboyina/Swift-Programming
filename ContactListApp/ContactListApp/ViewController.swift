//
//  ViewController.swift
//  ContactListApp
//
//  Created by Devanaboyina,Maneesh on 4/19/22.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "contactCell",for:indexPath)
        cell.textLabel?.text=contactNames[indexPath.row]
        return cell
        
    }
    
    var contactNames : [String] = []

    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate=self
        tableViewOutlet.dataSource=self
        fetchData()
        
    }
    
    func fetchData(){
        //create a database reference
        let databaseRef = Database.database().reference()
        
        databaseRef.observeSingleEvent(of: .value){
            snapshot in
            let contacts = snapshot.value as! NSDictionary
            
            self.contactNames = contacts.allKeys as! [String]
            
            //reload the data
            
            self.tableViewOutlet.reloadData()
        }
    }


}


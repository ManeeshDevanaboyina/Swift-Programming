//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Devanaboyina,Maneesh on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(prodName : String, prodCategory : String){
        self.productName = prodName
        self.productCategory = prodCategory
    }
}

class ViewController: UIViewController, UITableView, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return the cell with data
        
        <#code#>
    }
    
  
    
    
   
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.delegate = self
    }
    
    let pr
    

}


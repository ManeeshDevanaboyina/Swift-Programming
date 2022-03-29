//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Devanaboyina,Maneesh on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory: String?
    init(prodName: String, productCategory: String){
        self.productName = prodName;
        self.productCategory = productCategory;
    }
    init(){
        
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var productsArray = [Product()]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return the cell with data.
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        //assign the data to the cell
        cell.textLabel?.text = productsArray[indexPath.row].productName
        //returncell
        return cell
    }
    
    func tableView(_ _tableview: UITableView, numberOfRowsInSection section: Int) -> Int{
        return productsArray.count
    }
  
    
    
   
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            tableViewOutlet.delegate = self
            tableViewOutlet.delegate = self
            
            let product1 = Product(prodName: "MacBookair", productCategory: "Laptop")
            productsArray.append(product1);
            
            let product2 = Product(prodName: "Iphone", productCategory: "MobilePhones")
            productsArray.append(product2)
        
            let product3 = Product(prodName: "Airpods", productCategory: "Accessories")
            productsArray.append(product3)
            
            let product4 = Product(prodName: "Tab", productCategory: "Users")
            productsArray.append(product4)

}
}


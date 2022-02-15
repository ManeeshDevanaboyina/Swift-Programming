//
//  ViewController.swift
//  DiscountsApp
//
//  Created by Devanaboyina,Maneesh on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Amount: UITextField!
    
    @IBOutlet weak var Discount: UITextField!
    
    
    @IBOutlet weak var Output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submit(_ sender: Any) {
        //Amount.text="Enter Amount"
        let a = Double(Amount.text!)!
        let b = Double(Discount.text!)!
        let c = (a*(b/100))
        //Output.display(a - c)
        Output.text="\(a-c)"
        
        
    }
    
    


}


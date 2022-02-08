//
//  ViewController.swift
//  EvenOrOdd
//
//  Created by Devanaboyina,Maneesh on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputNumber: UITextField!
    
    @IBOutlet weak var Output: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func Submit(_ sender: UIButton) {
        
        var Input = Int(InputNumber.text!)!
        if(Input%2==0){
            Output.text="\(Input) is a even number"
        }
        else{
            Output.text="\(Input) is a Odd Number"
        }
        
        
    }
    
}


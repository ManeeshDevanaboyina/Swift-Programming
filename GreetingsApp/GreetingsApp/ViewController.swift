//
//  ViewController.swift
//  GreetingsApp
//
//  Created by Devanaboyina,Maneesh on 1/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var NameOutlet: UITextField!
    
    @IBOutlet weak var Display: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClick(_ sender: UIButton) {
        //Read the name from the text field
        var enteredName = NameOutlet.text!
        Display.text="Hello, \(enteredName)"
        
        
    }
    
}


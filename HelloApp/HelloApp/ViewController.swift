//
//  ViewController.swift
//  HelloApp
//
//  Created by Devanaboyina,Maneesh on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    @IBOutlet weak var Display: UILabel!
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    

    @IBAction func ButtonClicked(_ sender: UIButton) {
    print("Hello")
    //Read the text from the text field
       var enteredName = textOutlet.text!
    //Change the display label to Hello Name
        Display.text="Hello,\(enteredName)"
    
    }
}


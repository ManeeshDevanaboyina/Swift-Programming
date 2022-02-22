//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Devanaboyina,Maneesh on 2/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var DisplayOutput: UILabel!
    
    @IBOutlet weak var HintLabel: UILabel!
    
    @IBOutlet weak var InputText: UITextField!
    
    
    @IBOutlet weak var CongratsLabel: UILabel!
    
    @IBOutlet weak var CheckButton: UIButton!
    
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    var words=[[]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


    @IBAction func CheckButton(_ sender: UIButton) {
    }
    
    @IBAction func PlayAgainButton(_ sender: UIButton) {
    }
    
    
}


//
//  ViewController.swift
//  Devanaboyina_Maneesh
//
//  Created by Devanaboyina,Maneesh on 1/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var firstName: String = firstNameTextField.text!
        var lastName: String = lastNameTextField.text!
        
        detailLabel.text = "Details"
        
        fullNameLabel.text = "Full Name: \(firstName), \(lastName)"
        
        initialsLabel.text = "Initials: \(firstName[firstName.startIndex])\(lastName[lastName.startIndex])"
    }
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = nil
        lastNameTextField.text = nil
        detailLabel.text = nil
        fullNameLabel.text = nil
        initialsLabel.text = nil
        firstNameTextField.becomeFirstResponder()
    }
}


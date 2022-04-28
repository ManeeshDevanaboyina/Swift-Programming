//
//  CreateContactViewController.swift
//  Devanaboyina_ContactList
//
//  Created by Devanaboyina,Maneesh on 4/26/22.
//

import UIKit

class CreateContactViewController: UIViewController {
    
    
    @IBOutlet weak var contactName: UITextField!
    
    @IBOutlet weak var contactNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        
    }
    
    var Contacts = contacts

    override func viewDidAppear(_ animated: Bool) {
        //tableView.reloadData()
    }

    
    
    @IBAction func AddContact(_ sender: Any) {
        let a = contactName.text
        let b = contactNumber.text
        var ar = [a,b]
       // Contacts.append(ar)
        _ = navigationController?.popToRootViewController(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

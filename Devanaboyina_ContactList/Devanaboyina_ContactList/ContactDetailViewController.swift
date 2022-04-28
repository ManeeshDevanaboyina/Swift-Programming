//
//  ContactDetailViewController.swift
//  Devanaboyina_ContactList
//
//  Created by Devanaboyina,Maneesh on 4/26/22.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    
    @IBOutlet weak var contactName: UILabel!
    
    @IBOutlet weak var contactNumber: UILabel!
    
    var details = contacts
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //contactName.text = details.startIndex
        //contactName.text = details.startIndex

        // Do any additional setup after loading the view.
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

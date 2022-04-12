//
//  ViewController.swift
//  Devanaboyina_DiceGame
//
//  Created by Devanaboyina,Maneesh on 4/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var FirstPlayerInput: UITextField!
    
    
    @IBOutlet weak var SecondPlayerInput: UITextField!
    
  var firstPlayername=""
    var secondPlayername=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func DiceGamePressed(_ sender: Any) {
        firstPlayername = FirstPlayerInput.text!
        secondPlayername=SecondPlayerInput.text!
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          var transition = segue.identifier
          if transition == "ResultsSegue"{
              //Create a destination
              var destination = segue.destination as! GameViewController
              
              destination.firstPlayerName = FirstPlayerInput.text!
              destination.secondPlayerName = SecondPlayerInput.text!
              //destination.priceAfterDisc = String(priceAfterDiscount)
          }
      }
    

}


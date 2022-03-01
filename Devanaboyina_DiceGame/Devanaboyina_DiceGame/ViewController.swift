//
//  ViewController.swift
//  Devanaboyina_DiceGame
//
//  Created by Devanaboyina,Maneesh on 2/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstUserInput: UITextField!
    
    @IBOutlet weak var SecondUserInput: UITextField!
    
    @IBOutlet weak var FirstUserOutput: UILabel!
    
    
    @IBOutlet weak var SecondUserOutput: UILabel!
    
    
    @IBOutlet weak var FinalOutput: UILabel!
    
    
    
    @IBOutlet weak var DiceRoll: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func RollButton(_ sender: UIButton) {
        var user1=FirstUserInput.text!
        var user2=SecondUserInput.text!
        let randomInt1 = Int.random(in: 1...6)
        let randomInt2 = Int.random(in: 1...6)
        FirstUserOutput.text="\(user1)'s roll is: \(randomInt1)"
        SecondUserOutput.text="\(user2)'s roll is: \(randomInt2)"
        if(randomInt1<randomInt2){
            FinalOutput.text="\(user2) won the game"
        }
        else if(randomInt1>randomInt2){
            FinalOutput.text="\(user1) won the game"
        }
        else{
            FinalOutput.text="The game is tie"
        }
        
       
    }
    
    


}


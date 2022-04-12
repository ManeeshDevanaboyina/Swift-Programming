//
//  GameViewController.swift
//  Devanaboyina_DiceGame
//
//  Created by Devanaboyina,Maneesh on 4/7/22.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var DaveGameStatus: UILabel!
    
    @IBOutlet weak var JohnGameStatus: UILabel!
    
    @IBOutlet weak var DaveCurrentStatus: UILabel!
    
    @IBOutlet weak var JohnCurrentStatus: UILabel!
    
    @IBOutlet weak var finalImage: UIImageView!
    
    
    var firstPlayerName = ""
    var secondPlayerName = ""
    var images = ["dice1","dice2","dice3","dice4","dice5","dice6","play","tie"]
    var firstplayerWon = 0
    var secondplayerWon = 0
    var firstplayercurrentStatus = 0
    var secondplayercurrentStatus = 0
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalImage.image = UIImage(named: images[6])
        DaveGameStatus.text = "Total number of Games \(firstPlayerName) won:\(firstplayerWon)"
        JohnGameStatus.text = "Total number of Games \(secondPlayerName) won:\(secondplayerWon)"
        DaveCurrentStatus.text = "\(firstPlayerName) current Score: nil"
        JohnCurrentStatus.text = "\(secondPlayerName) current Score: nil"
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func RollDice(_ sender: Any) {
        let randomInt1 = Int.random(in: 1...6)
        let randomInt2 = Int.random(in: 1...6)
        
        
        if(randomInt1<randomInt2){
            DaveGameStatus.text = "Total number of Games \(firstPlayerName) won:\(firstplayerWon)"
            JohnGameStatus.text = "Total number of Games \(secondPlayerName) won:\(secondplayerWon+1)"
            DaveCurrentStatus.text = "\(secondPlayerName) current Score: \(randomInt1)"
            JohnCurrentStatus.text = "\(secondPlayerName) current Score: \(randomInt2+1)"
            finalImage.image = UIImage(named: images[randomInt2+1])
        }
        else if(randomInt1>randomInt2){
            DaveGameStatus.text = "Total number of Games \(firstPlayerName) won:\(firstplayerWon+1)"
            JohnGameStatus.text = "Total number of Games \(secondPlayerName) won:\(secondplayerWon)"
            DaveCurrentStatus.text = "\(secondPlayerName) current Score: \(randomInt1+1)"
            JohnCurrentStatus.text = "\(secondPlayerName) current Score: \(randomInt2)"
            finalImage.image = UIImage(named: images[randomInt1+1])
        }
        else{
            finalImage.image = UIImage(named: images[7])
            DaveCurrentStatus.text = "\(firstPlayerName) current Score: tie"
            JohnCurrentStatus.text = "\(secondPlayerName) current Score: tie"
            
        }
        
        //       FirstUserOutput.text="\(user1)'s roll is: \(randomInt1)"
           //    SecondUserOutput.text="\(user2)'s roll is: \(randomInt2)"
             //  if(randomInt1<randomInt2){
                 //  FinalOutput.text="\(user2) won the game"
               //}
              // else if(randomInt1>randomInt2){
              //     FinalOutput.text="\(user1) won the game"
              // }
              // else{
                //   FinalOutput.text="The game is tie"
               //}
        
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

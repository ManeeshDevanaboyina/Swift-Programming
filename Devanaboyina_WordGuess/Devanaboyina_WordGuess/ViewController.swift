//
//  ViewController.swift
//  Devanaboyina_WordGuess
//
//  Created by Devanaboyina,Maneesh on 3/31/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var guessLetterButtonPressed: UIButton!
    
    @IBOutlet weak var playAgainButtonPressed: UIButton!


        var words = [["TESLA", "Elon Musk"],["TCS","Ratan Tata"],["PARIS", "Eiffel Tower"],["HYDERABAD", "Charminar"],["AMAZON", "Jeff Bezzos"]]
             
        var images = ["Tesla","tata","paris","charminar","amazon","playagain"]
    
    let maxNumOfWrongGuesses = 10
    var countGuessesRemaining = 11
    var guessedWord = ""
    var countGuessLetter = ""
    var guessCount = 0
    var countGuessedWord = 0
    var IndexSearch = 0
    var hintKeyword = ""
    var wordsMissed = 0

override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    guessedWord = words[IndexSearch][0]
    hintKeyword = words[IndexSearch][1]
    hintLabel.text = "HINT: " + hintKeyword
    totalWordsLabel.text = "Total number of words in game: \(words.count)"
    wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count)"
    upFormWordField()
    guessLetterButtonPressed.isEnabled = false
    playAgainButtonPressed.isHidden = true
}
    
    func upFormWordField() {
        var a = ""
        countGuessLetter += guessLetterField.text!
        
        for l in guessedWord {
            if countGuessLetter.contains(l) {
                a = a + " \(l)"
            } else {
                a += " _"
            }
        }
        a.removeFirst()
        userGuessLabel.text = a
    }
    func UIUpdate(){
    guessLetterField.resignFirstResponder()
    guessLetterField.text = ""
}

    func CountChange(){
        wordsMissedLabel.text = "Total number of words guessed wrongly: \(wordsMissed)"
        wordsGuessedLabel.text = "Total number of words guessed successfully: \(countGuessedWord)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - (countGuessedWord + wordsMissed))"
    }

func letterGuessed() {
    upFormWordField()
    guessCount += 1
    countGuessesRemaining = countGuessesRemaining - 1
    
    let a = userGuessLabel.text!
    
    if countGuessesRemaining == 0 {
        playAgainButtonPressed.isHidden = false
        guessLetterField.isEnabled = false
        guessLetterButtonPressed.isEnabled = false
        guessCountLabel.text = "You have used all the available guesses, Please start again"
        wordsMissed += 1
        CountChange()
        upIma()
    } else if !a.contains("_") {
        playAgainButtonPressed.isHidden = false
        guessLetterField.isEnabled = false
        guessLetterButtonPressed.isEnabled = false
        guessCountLabel.text = "You won! It took you \(guessCount) attempts to guess the word!"
        countGuessedWord += 1
        CountChange()
        upIma()
    } else {
        
        
        let guess = ( guessCount == 1 ? "Guess" : "Guesses")
        guessCountLabel.text = "You have made \(guessCount) \(guess)"
    }
    
    
    if (countGuessedWord + wordsMissed) == words.count {
        guessCountLabel.text = "Congratulations, You are done, Please start over again ?"
        upIma()
        
    }
}
    
    func upIma(){
        if(countGuessesRemaining == 0){
            imageView.isHidden = false
            imageView.image = UIImage(named: images[5])
            let o = imageView.frame
            let h: CGFloat = 10
            let w: CGFloat = 10
            let f = CGRect(
            x: imageView.frame.origin.x + w,
            y: imageView.frame.origin.y + h,
            width: imageView.frame.width - w,
            height: imageView.frame.height - h)
            imageView.frame = f
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 11.0,  animations: {
                            self.imageView.frame = o
        })
        }
        else{
            imageView.isHidden = false
            imageView.image = UIImage(named: images[IndexSearch])
            let o = imageView.frame
            let h: CGFloat = 10
            let w: CGFloat = 10
            let f = CGRect(
            x: imageView.frame.origin.x + w,
            y: imageView.frame.origin.y + h,
            width: imageView.frame.width - w,
            height: imageView.frame.height - h)
            imageView.frame = f
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 11.0,  animations: {
                            self.imageView.frame = o
                        })
    }
    }


@IBAction func guessLetterFieldChanged(_ sender: Any) {

    if let a = guessLetterField.text?.last {
        guessLetterField.text = "\(a)"
        guessLetterButtonPressed.isEnabled = true
    } else {
        
        guessLetterButtonPressed.isEnabled = false
    }
}


@IBAction func guessLetterButtonPressed(_ sender: Any) {
    letterGuessed()
    UIUpdate()
    let l = guessLetterField.text
    if l?.isEmpty == true{
        guessLetterButtonPressed.isEnabled = false
    }
    else{
        
        guessLetterButtonPressed.isEnabled = true
    }
}


@IBAction func playAgainButtonPressed(_ sender: Any) {
    imageView.isHidden = true
    IndexSearch += 1
    if IndexSearch == words.count {
        IndexSearch = 0
        countGuessedWord = 0
        wordsMissed = 0
        CountChange()
    }
    guessedWord = words[IndexSearch][0]
    hintKeyword = words[IndexSearch][1]
    hintLabel.text = "HINT: " + hintKeyword
    playAgainButtonPressed.isHidden = true
    guessLetterField.isEnabled = true
    guessLetterButtonPressed.isEnabled = false
    countGuessesRemaining = maxNumOfWrongGuesses + 1
    countGuessLetter = ""
    upFormWordField()
    guessCountLabel.text = "You have Made Zero Guessess"
    guessCount = 0
}

}


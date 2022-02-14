//
//  ViewController.swift
//  Devanaboyina_Calculator
//
//  Created by Devanaboyina,Maneesh on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var DisplayOutput: UILabel!
    
    var x : Double = 0
    var y : Double = 0
    var output : Double = 0
    
    var Operator = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AllClear(_ sender: UIButton) {
        
        DisplayOutput.text=""
    }
    
    @IBAction func ClearScreen(_ sender: UIButton) {
        DisplayOutput.text=""
    }
    
    @IBAction func ChangeSign(_ sender: UIButton) {
    }
    
    @IBAction func DivisionButton(_ sender: UIButton) {
        Operator = "/"
        x = Double(DisplayOutput.text!)!
        DisplayOutput.text=""
    }
    
    @IBAction func MultiplicationButton(_ sender: UIButton) {
        
        Operator = "*"
        x = Double(DisplayOutput.text!)!
        DisplayOutput.text=""
    }
    
    @IBAction func SubtractionButton(_ sender: UIButton) {
        
        Operator = "-"
        x = Double(DisplayOutput.text!)!
        DisplayOutput.text=""
    }
    
    @IBAction func AdditionButton(_ sender: UIButton) {
        
        Operator = "+"
        x = Double(DisplayOutput.text!)!
        DisplayOutput.text=""
    }
    
    @IBAction func EqualsButton(_ sender: UIButton) {
        
        y = Double(DisplayOutput.text!)!
                
                switch Operator {
                case "+":
                    output = x+y
                    DisplayOutput.text = String(output)
                case "-":
                    output = x-y
                    DisplayOutput.text = String(output)
                case "*":
                    output = x*y
                    DisplayOutput.text = String(output)
                case "/":
                    output = x/y
                    
                    DisplayOutput.text = String(output)
                case "%":

                    output = x.truncatingRemainder(dividingBy: y)
                    
                    DisplayOutput.text = String(output)
                default:
                    DisplayOutput.text = "ERROR"
    }
    }
    
    @IBAction func PercentageButton(_ sender: UIButton) {
        Operator = "%"
        x = Double(DisplayOutput.text!)!
        DisplayOutput.text=""
    }
    
    @IBAction func DecimalButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "."
        
    }
    
    @IBAction func ZeroButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "0"
    }
    
    @IBAction func OneButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "1"
    }
    
    @IBAction func TwoButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "2"
    }
    
    @IBAction func ThreeButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "3"
    }
    
    @IBAction func FourButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "4"
    }
    
    @IBAction func FiveButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "5"
    }
    
    @IBAction func SixButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "6"
    }
    
    @IBAction func SevenButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "7"
    }
    
    @IBAction func EightButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "8"
    }
    
    @IBAction func NineButton(_ sender: UIButton) {
        DisplayOutput.text = DisplayOutput.text! + "9"
    }

}


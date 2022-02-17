//
//  ViewController.swift
//  Devanaboyina_Calculator
//
//  Created by Devanaboyina,Maneesh on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var DisplayOutput: UILabel!
    
    var x : Double = -1.1
    var y : Double = 0
    var output : Double = 0
    
    var Operator = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AllClear(_ sender: UIButton) {
        
       x=0
        y=0
        DisplayOutput.text=""
    }
    
    @IBAction func ClearScreen(_ sender: UIButton) {
        DisplayOutput.text=""
    }
    
    @IBAction func ChangeSign(_ sender: UIButton) {
        
       /* x = Double(DisplayOutput.text)
        if(x != -1.1){
            x = -x
            
        }*/
        if(DisplayOutput.text?.first=="-"){
            DisplayOutput.text?.removeFirst()
        }
        else{
            DisplayOutput.text="-\(DisplayOutput.text!)"
        }
        
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
                    if(y==0){
                        DisplayOutput.text="Error"
                    }
                    else{
                    let result1=round(output*100000)/100000
                    DisplayOutput.text = String(result1)
                    }
                case "%":

                    output = x.truncatingRemainder(dividingBy: y)
                    let result=round(output*10)/10
                    
                    DisplayOutput.text = String(result)
                default:
                    DisplayOutput.text = "ERROR"
    }
        let splitOutput =  DisplayOutput.text!.components(separatedBy: ".")
        let test = DisplayOutput.text
        if(!(test == "Error")){
        if(splitOutput[1]=="0"){
            DisplayOutput.text = splitOutput[0]
        }
        }
    }
    
    @IBAction func PercentageButton(_ sender: UIButton) {
        Operator = "%"
        x = Double(DisplayOutput.text!)!
        DisplayOutput.text=""
    }
    
    @IBAction func DecimalButton(_ sender: UIButton) {
        
       if(!DisplayOutput.text!.contains("."))
        {
           DisplayOutput.text = DisplayOutput.text! + "."
            return
        }
//        else{
//            DisplayOutput.text = DisplayOutput.text! + "."
//        }
        
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


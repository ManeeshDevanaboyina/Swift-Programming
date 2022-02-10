//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Devanaboyina,Maneesh on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var crsSemester: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    
    @IBOutlet weak var NextButton: UIButton!
    
    let courses=[
    ["img01","44555","Network Securtiy","Fall 2022"],
    ["img02","44643","iOS","Spring 2022"],
    ["img03","44656","Streaming Data","Summer 2022"]
    ]
    
    var imageNumber=0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Load the details(image, num, title and sem) of the first (0th element)Course
        updateUI(imageNumber)
        //Previous button is disabled
        previousButton.isEnabled=false;
    }
    
    @IBAction func previousButtonClicked(_ sender: Any) {
        
        //UI should be updated with the previous course details
        imageNumber-=1
        updateUI(imageNumber)
        
        //Next Button should be enabled
        NextButton.isEnabled=true
        //Starting of courses array, previous button should be disabled at the 0th position
        if(imageNumber==0){
            previousButton.isEnabled=false
        }
    }
    
    @IBAction func NextButtonClicked(_ sender: Any) {
        
        //UI should be updated with the next course details
        imageNumber+=1
        updateUI(imageNumber)
        
        //Previous button should be enabled
        previousButton.isEnabled=true
        
        //Once reaching the end of the courses array,nextButton should be disabled
        if(imageNumber==courses.count-1){
            NextButton.isEnabled=false
        }
    }
    
    func updateUI(_ imageNumber:Int){
        
        imageViewOutlet.image=UIImage(named:courses[imageNumber][0])
        
        crsNum.text=courses[imageNumber][1]
        crsTitle.text=courses[imageNumber][2]
        crsSemester.text=courses[imageNumber][3]
    }
}


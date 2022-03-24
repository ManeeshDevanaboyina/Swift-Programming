//
//  ViewController.swift
//  StudentApp
//
//  Created by Devanaboyina,Maneesh on 3/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sIdOutlet: UITextField!
    
    var studentFound = Student()
    
    //to check whether user is student/guest
      //Initially isStudent is false that means user is a guest
      var isStudent = false
      
      //Array of type Student, we imported it from the 'Student' file
      var studentsArray = students
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        //value of the textField
              let enteredID = sIdOutlet.text!
              
              //Loop the array to find the student
              for student in studentsArray {
                  if enteredID == student.sid{
                      //student found and store the student in a global variable.
                      studentFound = student
                      //boolean flag as true,since we found a student.
                      isStudent = true
                      
                  }
              }
          }
    

}


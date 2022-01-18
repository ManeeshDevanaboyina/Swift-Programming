import UIKit

var greeting = "Hello, playground"

print("Hi",10,12.25)

//String Interpolation

var name="Maneesh"

print("Hello, \(name)!")

var grade="A"
print("Hi \(name)! Your grade is \(grade).")

//Writing a statement in multiple lines

print("""
Hi This is \(name)
""")

//Carriage return  Returns to the next line

print("Hello All \rThis is Maneesh")

//let is a constant
// explicit declaration the data type
let welcome_msg = "Hello!"
print(welcome_msg,"All")

//Using Terminators: It doesn't end up in next line

print("Hello World!")
print("This is Maneesh", terminator:"=")
print("This is swift programming")

//Using Seperator

print(1,2,3,4,5,6, separator:"-")  //output will be 1-2-3-4-5-6

//Declaration of variable. The value of the var would be changed whereas the let won't change
var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)


let pi = 3.14
print(pi)

//Explicit Declaration of Variable
var age : Int = 23
age = age * 2
print(age)

var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")

var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)


print(10,20,30)
print(12.5,15.5)

//Using Tuples

var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )
                  
var name1 = ("John","Smith")
var fName = name1.0
var lName = name1.1
print(fName , terminator : ",")
print(lName)

var origin = (x : 0 , y : 0)
var point = origin
print(point)

//Tuple reassignment

let city = (name : "Maryville" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

			







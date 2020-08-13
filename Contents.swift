import UIKit

/*:
 ### Example
 */
var str = "Hello, playground"

var message = "Hello, World!"
print(message)

message = "My Message!"
print(message)

/*:
 ### Exercise
 
 1.  Create a new variable ( var ) that stores your name
 2.  Print the variable
 */

var name = "Steve Polyak"
print(name)

/* variables */

var name1 = "bob" //String
var age = 51 //Integer
var weight = 212.15 //Double
var isOrganDonor = false //Boolean

print(weight)
weight = 200
print(weight)

let eyeColor = "Blue"
//eyeColor = "Brown"

/*:
### Exercise

Consider a car.  What attributes and properties of a car could we capture using variables and constants? Which attributes would be mutable and which would be immutable?

Create variables and constants for the following attributes of a car, and then print each one.

1.  paintColor
2.  make
3.  model
4.  year
5.  isManualTransmission
6. seats
7. mileage
*/

var paintColor = "red"
let make = "Chevy"
let model = "Nova"
let year = 1969
let isManualTransmission = true
let seats = 4
var mileage = 250000
print (make)
print (model)

//Strings

//explicit type declaration vs. type inference
var age1: String = "10"
let firstName = "Jenna"
let lastName = "Smith"

var fullName = firstName + " " + lastName //String concat
print(fullName)

var myAge = 25
var newMessage = "Hi, my name is \(firstName) and I am \(myAge) years old" // string interpolation
print(newMessage)
newMessage.append(". And I like scary clowns.")
print(newMessage)

// Numbers

var agea = 15 // type inference Integer
var price = 10.99 // Double
var floatPrice: Float = 10.99 //Float
var size: Int = 6
var length = 10
var width = 5
let area = length * width
print("The area is \(area)")
var health = 100
var poisonDamage = 19
health -= poisonDamage //compound assignment operator
print("Health is \(health)")

var tLength: Double = 10
var tWidth: Double = 5

let triangleArea = sqrt(pow(tLength,2) + pow(tWidth,2))
print(triangleArea)


var quantity: Int = 5
var productPrice: Double = 10.99

var cost = Double(quantity) * productPrice // explicit cast needed here to mix Int and Double math



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

/*:
### Exercise

Consider this scenario: You have a shopping cart with 6 items in it.  The total price of all the items combined is $78.50
You have a coupon that gets you 25% off of the total price.
After the coupon is applied, taxes will be applied at a rate of 7.75% of the total cost (cost after coupon).

1. Create 6 different constants that represent the price of each item
2. Perform addition operations to get the total price of all 6 items and store it in a constant ($78.50)
3. Create a constant for the 25% coupon
4. Create a constant called `priceAfterDiscount` and store the total price after the 25% discount has been applied (should equal around $58.87)
5. Create a constant called `taxes` that stores the total taxes to be charged using the tax rate (should equal around $4.56)
5. Create a constant called `finalPrice` that applies the 7.75% tax rate to priceAfterDicscount.  (should equal around $63.43)
*/

let item1Price = 10.0
let item2Price = 10.0
let item3Price = 10.0
let item4Price = 10.0
let item5Price = 10.0
let item6Price = 28.50
let totalPrice = item1Price + item2Price + item3Price + item4Price + item5Price + item6Price
let coupon = 0.25
let priceAfterDiscount = totalPrice - (totalPrice * coupon)
let taxes = 0.0775
let finalPrice =  priceAfterDiscount + (priceAfterDiscount * taxes)
print(finalPrice)

// bools, conditional and comparison operators

if true == false || true == true {
    print("i see")
}
// !=
var hasDataFinishedDownloading: Bool = false
if !hasDataFinishedDownloading {
    print("wait")
}

let color = "red"

if color == "blue" {
    print ("blue")
} else if color == "red" {
    print("red")
} else {
    print("unknown color")
}


/*:
 ### Exercise
 
 Consider some basic American traffic signaling.
 
 1.  Create a string variable called `currentLightColor`
 2.  Set it's value to "Green", "Yellow", or "Red"
 3.  Create conditional if / else logic to print: "The light is X" where X is the value of the light variable
 4.  If if /else clause should print the appropriate color
 */
var currentLightColor: String = "Green"

if currentLightColor == "Green" {
    print("It is time to go")
} else if currentLightColor == "Yellow" {
    print("whoa there buddy")
} else if currentLightColor == "Red" {
    print("STOP!")
} else {
    print("Unknown light color")
}

// constants and logical operators

// && or || operators

// arrays

var employeeSalaries: [Int] = [54,45,25,20]
print(employeeSalaries.count)
employeeSalaries.append(27)
print(employeeSalaries.count)
employeeSalaries.remove(at: 1)
print(employeeSalaries)

//initialize array
var students = [String]()

/*:
### Exercise

1.  Create an array that stores the names of 6 different donuts
2.  Create a 2nd array that stores the quantity of each of those donuts as an Int
3.  Remove the last donut in the array and the corresponding last quantity in the quantity array
4.  Add a new donut name at the beginning of the donut names array and add a new quantity of 0 (zero)  at the beginning of the quantity array
5.  Remove all elements in both arrays


*/

var donuts: [String] = ["Glazed", "Chocolate","Jelly", "Jesus", "Mint"]
var donutCount: [Int] = [5,2,3,2,1]
donuts.remove(at: 4)
donutCount.remove(at: 4)
donuts.insert("Coconut", at: 0)
donutCount.insert(0, at: 0)
donuts.removeAll()
donutCount.removeAll()

//loops


var employeeSalaries2: [Double] = [54.0,45.0,25.0,20.0]
let increase = 0.10

var x = 0
repeat {
    employeeSalaries2[x] = employeeSalaries2[x] + (employeeSalaries2[x] * increase)
    x += 1
} while (x < employeeSalaries2.count)

print(employeeSalaries2)

for i in 0..<employeeSalaries2.count {
    employeeSalaries2[i] = employeeSalaries2[i] + (employeeSalaries2[i] * increase)
}
print(employeeSalaries2)

for z in 0...27 {
    print("z is \(z)")
}

for salary in employeeSalaries2 {
    print("Salary is \(salary)")
}

/*:
### Exercise

Consider a banking system where the computer stores transactional data for a customer's account.

1.  Create an array of Double that stores the amounts of ten past purchases
2.  Create a loop that iterates through the array and prints the amount spent with this formatting: `"Purchase: $X"` where X is the amount of the purchase
3.  The bank improperly calculated the purchases. Create a *different* loop style that iterates through the array and and adds $0.10 to each purchase amount then print the array
4.  Create a loop that iterates through the array starting at the *end* of the array and going to the beginning

*/

var pastPurchases: [Double] = [2.35, 5.5, 6.2, 45.23, 23.22, 25.6]
// print purchases
for purchase in pastPurchases {
    print("Purchase: $\(purchase)")
}
//adjust purchases
let adjustment = 0.10
for x in 0..<pastPurchases.count {
    pastPurchases[x] = pastPurchases[x] + (pastPurchases[x] * adjustment)
}
print(pastPurchases)
//print purchases in reverse
for x in (0..<pastPurchases.count).reversed() {
    print(pastPurchases[x])
}

// dictionaries
// Swift data collections: Array, Set, Dictionary

var namesOfIntegers = [Int: String]()
namesOfIntegers[3] = "three"
namesOfIntegers = [:] // clear out all values

var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]
print("Number of airports \(airports.count)")
if airports.isEmpty {
    print("No airports")
}
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["Foo"] = nil

for (code, airportTitle) in airports {
    print("The code, \(code), has value \(airportTitle)")
}
for key in airports.keys {
    print(key)
}
for val in airports.values {
    print(val)
}

/*:
### Exercise

Consider a real-world dictionary that you might read on your desk.

1.  Create an animal dictionary where the key is the name of the animal and the value should be a string which represents the definition of the animal
2.  Add ten animals to this dictionary
3.  Iterate through the dictionary and print the keys and values in this format: `"Animal: X -- Description: Y"` where X is the name of the animal and Y is the description of the animal
4.  Clear out the entire dictionary and then instead use this dictionary to store United States state abbrieviations and full names (ie CA : California)
5. Store ten state names and abbreviations in this dictionary and then print them in this format: `Y: X` where Y is the name of the state and where X is the abbreviation
6. Set the first state you chose to `nil`
7. Iterate through the array and print each key and value and see what happened to that state you set to nil
*/

var dictionary: [String: String] = ["Cat": "Cats are fun", "Dog": "Dogs drool", "Rabbit": "Rabbits run"]
for (kind, description) in dictionary {
    print("Animal: \(kind) -- Description: \(description)")
}
dictionary = [:]
dictionary = ["IA": "Iowa", "IL": "Illinois", "NY": "New York"]
for (code, title) in dictionary {
    print("\(code): \(title)")
}
dictionary["IA"] = nil
for (code, title) in dictionary {
    print("\(code): \(title)")
}

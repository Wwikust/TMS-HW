import Cocoa

var greeting = "Hello, playground"

//Homework Lesson 02. Smalei Viktoryia//


//Task01//


print("Task01")

print("")

let myName: String = "Victoria"
let myAge: Int = 21
let myGender: String = "woman"
let myFavoriteDish: String = "Tom Yam"

print("myName:\(myName)")
print("myAge:\(myAge)")
print("myGender:\(myGender)")
print("myFavoriteDish:\(myFavoriteDish)")

print("")



//Task02//


print("Task02")

print("")

let currentYear = 2024
let  myBirthYear = currentYear - myAge

print("myBirthYear:\(myBirthYear)")

print("")



//Task03//


print("Task03")

print("")

let str = "21"
if let number = Int(str) {
    
    if number % 3 == 0 {
        print("\(number) делится на 3 без остатка")
    }
    if number % 4 == 0 {
        print("\(number) делится на 4 без остатка")
    }
    if number % 5 == 0 {
        print("\(number) делится на 5 без остатка")
    }
    if number % 6 == 0 {
        print("\(number) делится на 6 без остатка")
    }
    if number % 7 == 0 {
        print("\(number) делится на 7 без остатка")
    }
}

print("")



//Task04//


print("Task04")

print("")

if let number = Int(str) {
    for  divisor in 3...7 {
        if number % divisor == 0 {
            print("\(number) делится на \(divisor) без остатка")
        }
    }
}
    print("")
    
    
    
    //Task05*//
    

print("Task05*")

print("")
let x = 4
let p = 3
var n = 1
var i = 0
while (i < p) {
    //            n = n * x
    i += 1
    n *= x
}
print("n = \(n)")
    

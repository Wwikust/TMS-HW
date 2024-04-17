import Cocoa

//Homework Lesson 04. Smalei Viktoryia//


//Task01//

print("Task01")
print("")

// функция для сложения двух чисел / /

func addition(_ a: Int,_ b: Int) -> Int {
    return a + b
}

// функция для вычитания двух чисел //

func subtraction(_ a: Int,_ b: Int) -> Int {
    return a - b
}

// функция для умножения двух чисел //

func multiplication(_ a: Int,_ b: Int) -> Int {
    return a * b
}

// функция для деления двух чисел //

func division(_ a: Int,_ b: Int) -> Int {
    if b != 0 {
        return a / b
    }
    return 0
}
    

// функция для получения остатка от деления двух чисел //

func remainder(_ a: Int,_ b: Int) -> Int {
    if b != 0 {
        return a % b
    }
    return 0
}


print ("Результат сложения: \(addition(8,4))")
print ("Результат вычитания: \(subtraction(12,4))")
print ("Результат умножения: \(multiplication(2,3))")
print ("Результат деления: \(division(18,6))")
print ("Остаток от деления: \(remainder(19,4))")

print("")


//Task02 Fibonacci numbers using recusrion//

print("Task02")
print("")

let number = 16
let result = fibonacci (number)

func fibonacci (_ n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return fibonacci(n-1) + fibonacci(n-2)
    }
}

print ("Число Фибоначчи для \(number): \(result)")

print("")

//Task03//

print("Task03")
print("")

// функция для извлечения целой части числа //

let num: Double = 1.2345
func integerPart (_ num: Double) -> Int {
    return Int(round(num));
}

print("Целая часть числа: \(integerPart(num))")

print("")

// функция для извлечения дробной части числа //

let numbr: Float = 1.2345

func getFractionalPart(_ numbr: Float) -> Float {
    return numbr.truncatingRemainder(dividingBy: 1)
}


print("Дробная часть числа \(getFractionalPart(numbr))")

print("")

//Task04//

print("Task04")
print("")

let n = 7

// функция, которая проверяет все числа от 1 до N //

func numbers( upTo n: Int, condition: (Int) -> Bool) {
    for number in 1...n {
        if condition(number) {
            print("\(number) удовлетворяет условию")
        }
    }
}

// делимость на 2 //
let condition1: (Int) -> Bool = { number in
    return number % 2 == 0
}

// меньше 5 //
let condition2: (Int) -> Bool = { number in
    return number < 5
}

// Проверка через функцию, является ли число простым //
func prime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

// проверка числа на простоту //
let condition3: (Int) -> Bool = { number in
    return prime(number)
}

print("Делимость на 2:")
numbers(upTo: n, condition: condition1)

print("\nМеньше 5:")
numbers(upTo: n, condition: condition2)

print("\nПростые числа:")
numbers(upTo: n, condition: condition3)


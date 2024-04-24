import Cocoa

//Homework Lesson 05. Smalei Viktoryia//


//Task01//
//Алгоритм наименьшего общего краткого//

print("Task01")
print("")

let a = 24
let b = 36
let leastCommonMultiple = lcm(a, b)

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}
print("Наименьшее общее кратное \(a) и \(b) равно \(leastCommonMultiple)")

print("")


//Task02//
//Функция возведения в степень//

print("Task02")
print("")

let base1 = 2
let exponent1 = 6
let result1 = construction (base1: base1, exponent1: exponent1)

func construction(base1: Int, exponent1: Int) -> Int {
    var result1 = 1
    for _ in 0..<exponent1 {
        result1 *= base1
    }
    return result1
}
print(result1)

//
//func construction(base: Int, exponent: Int) -> Int {
//    var result = 1
//    for _ in 0..<exponent {
//        result *= base
//    }
//    return result
//}
//construction(base: 2, exponent: 5)
//construction(base: 2, exponent: 6)
//construction(base: 2, exponent: 7)
//construction(base: 2, exponent: 8)
print("")

//Task03//
//Быстрое возведение в степень//

print("Task03")
print("")

//процедурно//

let base2_1 = 3
let exponent2_1 = 2
let modulus = 1000

let result2_1 = fastExponentiation1(base2_1: base2_1, exponent2_1: exponent2_1, modulus: modulus)

func fastExponentiation1(base2_1: Int, exponent2_1: Int, modulus: Int) -> Int {
    var result2_1 = 1
    var baseTemp = base2_1
    var exponentTemp = exponent2_1
    
    while exponentTemp > 0 {
        if exponentTemp % 2 == 1 {
            result2_1 = (result2_1 * baseTemp) % modulus
        }
        exponentTemp = exponentTemp / 2
        baseTemp = (baseTemp * baseTemp) % modulus
    }
    
    return result2_1
}
print(result2_1)


//через функциональное программирование//

print("")

let result2_2 = fastExponentiation2(base2_2: 2, power: 10)

func fastExponentiation2(base2_2: Double, power: Int) -> Double {
    func fastExponentiationHelper(base2_2: Double, power: Int) -> Double {
        if power == 0 {
            return 1
        } else if power % 2 == 0 {
            let halfPower = fastExponentiationHelper(base2_2: base2_2, power: power / 2)
            return halfPower * halfPower
        } else {
            let halfPower = fastExponentiationHelper(base2_2: base2_2, power: (power - 1) / 2)
            return base2_2 * halfPower * halfPower
        }
    }
    
    return fastExponentiationHelper(base2_2: base2_2, power: power)
}

print(result2_2)
print("")

//Task04//
//Тест Люка Лемера Ризеля получение простого числа//

print("Task04")
print("")

let n = 5
let k = 1
let rounds = 10


func isPrimeLLR(n: Int, k: Int, rounds: Int) -> Bool {
    if n <= 1 || n % 2 == 0 {
        return false
    }
    if k <= 0 {
        return false
    }
    
    let d = (1 << n) - 1
    
    func randomA() -> Int {
        return Int.random(in: 2..<n-1)
    }
    
    func modPow(base: Int, exponent: Int, modulus: Int) -> Int {
        var result = 1
        var baseTemp = base
        var exponentTemp = exponent
        
        while exponentTemp > 0 {
            if exponentTemp % 2 == 1 {
                result = (result * baseTemp) % modulus
            }
            exponentTemp = exponentTemp / 2
            baseTemp = (baseTemp * baseTemp) % modulus
        }
        
        return result
    }

    for _ in 0..<rounds {
        let a = randomA()
        var x = modPow(base: a, exponent: d, modulus: n)
        if x == 1 || x == n - 1 {
            continue
        }
        
        for _ in 1..<n-1 {
            x = modPow(base: x, exponent: 2, modulus: n)
            if x == 1 { return false }
            if x == n - 1 { break }
        }
        
        if x != n - 1 {
            return false
        }
    }
    
    return true
}

if isPrimeLLR(n: n, k: k, rounds: rounds) {
    print("\(n) простое число")
} else {
    print("\(n) составное число")
}




import Foundation
import UIKit

/// Problem 1-5

/*
 Problem 1:
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 Find the sum of all the multiples of 3 or 5 below 1000.
 */


let str = "greetings"

func sum() -> Int {
    var array: [Int] = []
    for n in 1..<1000 {
        if n % 15 == 0 {
            array.append(n)
        } else if n % 5 == 0 {
            array.append(n)
        } else if n % 3 == 0 {
            array.append(n)
        }
    }
    
    let total = array.reduce(0,+)
    return total
}

sum()



/*
 Problem 2:
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
 */

func fibonacci(until: Int) -> Int {
    var result: [Int] = []
    var first = 0
    var next = 1
    
    while first < until {
        let sum = first + next
        first = next
        next = sum
         
        if sum > until {
            break
        }
        
        if sum % 2 == 0 {
            result.append(sum)
        }
        
    }
    print(result)
    return result.reduce(0, +)
}

print(fibonacci(until: 4000000))



/*
 Problem 3:
 The prime factors of 13195 are 5, 7, 13 and 29.

 What is the largest prime factor of the number 600851475143 ?
 */

import UIKit
import Foundation

func primeFactors(n: Int) -> [Int] {
    var n = n
    var factors = [Int]()
    for divisor in 2 ..< n {
        while n % divisor == 0 {
            factors.append(divisor)
            n /= divisor
        }
    }
    return factors
}

print(primeFactors(n: 13195))




var s1 = Singy.getSingy()
var s2 = Singy.getSingy()
s1.name = "One"

print(s1.name)
print(s2.name)


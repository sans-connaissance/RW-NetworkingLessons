//
//  CalculatePrimeOperation.swift
//  RW-NetworkingLessons
//
//  Created by David Malicke on 6/21/21.
//

import Foundation


class CalculatePrimeOperation: Operation {
    
    
    override func main() {
        for number in 0...1000000 {
            let isPrimeNumber = isPrime(number: number)
            print("\(number) is prime: \(isPrimeNumber)")
        }
        
    }
    func isPrime(number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        if number <= 3 {
            return true
        }
        var i = 2
        while i * i <= number {
            if number % i == 0 {
                return false
            }
            i = i + 2
        }
        return true
    }
}

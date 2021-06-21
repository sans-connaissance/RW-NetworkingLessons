//
//  ContentView.swift
//  Shared
//
//  Created by David Malicke on 6/21/21.
//

import SwiftUI

struct ContentView: View {
    
    let operation = CalculatePrimeOperation()
    
    
    var body: some View {
        VStack {
            Spacer()
            DatePicker(selection: .constant(Date()), label: {Text("Date")})
                .labelsHidden()
            Button(action: {calculatePrimes()}, label: {Text("Calculate Primes")})
            Spacer()
        }
    }
    
    func calculatePrimes() {
        let queue = OperationQueue()
        queue.addOperation(operation)

//        for number in 0...1000000 {
//            let isPrimeNumber = isPrime(number: number)
//            print("\(number) is prime: \(isPrimeNumber)")
//        }
        
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

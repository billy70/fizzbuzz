//
//  Brain.swift
//  FizzBuzz
//
//  Created by William L. Marr III on 7/13/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    // MARK: - Private methods
    
    private func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }


    // MARK: - Public methods

    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(15, number: number)
    }
    
    /*
     The classic FizzBuzz competency test.
     
     If the number is divisible by 3, return Fizz.
     If the number is divisible by 5, return Buzz.
     If the number is divisible by both 3 AND 5, return FizzBuzz.
     Otherwise, return the number back that was passed in.
     
     Input is an integer, output is a string.
    */
    func say(number: Int) -> String {
        if isDivisibleByFifteen(number) {
            return "FizzBuzz"
        } else if isDivisibleByThree(number) {
            return "Fizz"
        } else if isDivisibleByFive(number) {
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
}

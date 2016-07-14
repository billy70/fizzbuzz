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
}

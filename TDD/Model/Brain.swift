//
//  Brain.swift
//  TDD
//
//  Created by Matt Deuschle on 9/28/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

class Brain {

    func isDivisibleBy(number: Int, divisor: Int) -> Bool {
        return number % divisor == 0
    }

    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 3)
    }

    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 5)
    }

    func isDivisibleByThreeAndFive(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 15)
    }

    func check(number: Int) -> String {
        let check = (number % 3 == 0, number % 5 == 0)
        switch check {
        case (true, true):
            return "FizzBuzz"
        case (true, false):
            return "Fizz"
        case (false, true):
            return "Buzz"
        default:
            return String(number)
        }
    }
}

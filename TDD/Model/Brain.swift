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

    func check(number: Int) -> Move {
        let check = (number % 3 == 0, number % 5 == 0)
        switch check {
        case (true, true):
            return .fizzBuzz
        case (true, false):
            return .fizz
        case (false, true):
            return .buzz
        default:
            return .number
        }
    }
}

//
//  BrainTests.swift
//  TDDTests
//
//  Created by Matt Deuschle on 9/28/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import XCTest
@testable import TDD

class BrainTests: XCTestCase {

    let brain = Brain()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 2)
        XCTAssertEqual(result, false)
    }

    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 3)
        XCTAssertEqual(result, false)
    }

    func testIsDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(number: 15)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(number: 2)
        XCTAssertEqual(result, false)
    }

    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, .fizz)
    }

    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, .buzz)
    }

    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, .fizzBuzz)
    }

    func testSayNumber() {
        let result = brain.check(number: 4)
        XCTAssertEqual(result, .number)
    }
}















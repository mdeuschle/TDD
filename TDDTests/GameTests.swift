//
//  GameTests.swift
//  TDDTests
//
//  Created by Matt Deuschle on 9/28/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import XCTest
@testable import TDD

class GameTests: XCTestCase {

    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testGameScoreStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }

    func testIfFizzMoveIsRight() {
        game.score = 2
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertTrue(result)
    }

    func testIfFizzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfBuzzMoveIsRight() {
        game.score = 4
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertTrue(result)
    }

    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertTrue(result)
    }

    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfWrongMoveScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
}





























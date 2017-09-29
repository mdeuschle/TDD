//
//  ViewControllerTests.swift
//  TDDTests
//
//  Created by Matt Deuschle on 9/28/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import XCTest
@testable import TDD

class ViewControllerTests: XCTestCase {

    var vc: ViewController!
    
    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let _ = vc.view
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testMoveOneIncrementScore() {
        vc.play(move: .number)
        let newScore = vc.gameScore
        XCTAssertEqual(newScore, 1)
    }

    func testMoveTwoIncrementScore() {
        vc.play(move: .number)
        vc.play(move: .number)
        let newScore = vc.gameScore
        XCTAssertEqual(newScore, 2)
    }

    func testHasAGame() {
        XCTAssertNotNil(vc.game)
    }

    func testFizzIncrementScore() {
        vc.game?.score = 2
        vc.play(move: .fizz)
        XCTAssertEqual(vc.gameScore, 3)
    }

    func testBuzzIncrementScore() {
        vc.game?.score = 4
        vc.play(move: .buzz)
        XCTAssertEqual(vc.gameScore, 5)
    }

    func testFizzBuzzIncrementScore() {
        vc.game?.score = 14
        vc.play(move: .fizzBuzz)
        XCTAssertEqual(vc.gameScore, 15)
    }

    func testScoreNotIncremented() {
        vc.game?.score = 6
        vc.play(move: .fizz)
        XCTAssertEqual(vc.gameScore, 6)
    }
}













//
//  Game.swift
//  TDD
//
//  Created by Matt Deuschle on 9/28/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

class Game {

    var score = 0
    var brain = Brain()

    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        if result == move {
            score += 1
            return (true, score)
        }
        return (false, score)
    }
}

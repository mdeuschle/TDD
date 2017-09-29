//
//  ViewController.swift
//  TDD
//
//  Created by Matt Deuschle on 9/28/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var scoreButton: UIButton!

    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let score = gameScore else { return }
            scoreButton.setTitle(String(score), for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let unwrappedGame = game else { return }
        gameScore = unwrappedGame.score
    }

    func play(move: Move) {
        guard let unwrappedGame = game else { return }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender.accessibilityIdentifier! {
        case "numberButton":
            play(move: .number)
        case "fizzButton":
            play(move: .fizz)
        case "buzzButton":
            play(move: .buzz)
        case "fizzBuzzButton":
            play(move: .fizzBuzz)
        default:
            play(move: .number)
        }
    }

    @IBAction func playAgainTapped(_ sender: UIButton) {

    }
}


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
    var gameScore: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    func play(move: String) {
        guard let unwrappedGame = game else { return }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {

    }

    @IBAction func playAgainTapped(_ sender: UIButton) {

    }
}


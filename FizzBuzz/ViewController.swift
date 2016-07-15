//
//  ViewController.swift
//  FizzBuzz
//
//  Created by William L. Marr III on 7/13/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    var gameScore: Int? {
        didSet {
            numberButton.setTitle("1", forState: .Normal)
        }
    }

    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: String) {
        guard let unwrappedGame = game else {
            print("ViewController.game is nil!")
            return
        }
        
        let result = unwrappedGame.play(move)
        gameScore = result.score
    }

    @IBAction func numberButtonTapped(sender: UIButton) {
        play("1")
    }
}


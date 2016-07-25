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
            guard let score = gameScore else {
                print("ViewController.gameScore is nil!")
                return
            }
            
            numberButton.setTitle("\(score)", forState: .Normal)
        }
    }

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
        
        guard let unwrappedGame = game else {
            print("In viewDidLoad(), ViewController.game is nil!")
            return
        }
        
        gameScore = unwrappedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("In play(move:), ViewController.game is nil!")
            return
        }
        
        let result = unwrappedGame.play(move)
        gameScore = result.score
    }

    @IBAction func buttonTapped(sender: UIButton) {
        switch sender {
            case numberButton: play(Move.Number)
            case fizzButton: play(Move.Fizz)
            case buzzButton: play(Move.Buzz)
            case fizzBuzzButton: play(Move.FizzBuzz)
            default: print("\(#file):\(#line) - unknown sender in buttonTapped(sender:) method.")
        }
    }
    
    @IBAction func playAgainTapped(sender: AnyObject) {
        guard let unwrappedGame = game else {
            print("In playAgainTapped(sender:), ViewController.game is nil!")
            return
        }
        
        unwrappedGame.restart()
        gameScore = unwrappedGame.score
    }
}


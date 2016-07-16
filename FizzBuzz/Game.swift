//
//  Game.swift
//  FizzBuzz
//
//  Created by William L. Marr III on 7/14/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import Foundation

class Game {

    // MARK: - Public properties
    
    var score: Int
    
    
    // MARK: - Private properties
    
    let brain = Brain()
    
    
    // MARK: - Initializers
    
    init() {
        score = 0
    }
    
    
    // MARK: Public methods
    
    func play(move: Move) -> (correct: Bool, score: Int) {
        let result = brain.say(score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}

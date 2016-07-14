//
//  GameTests.swift
//  FizzBuzz
//
//  Created by William L. Marr III on 7/14/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIsIncremented() {
        game.play()
        XCTAssertTrue(game.score == 1)
    }
    
}

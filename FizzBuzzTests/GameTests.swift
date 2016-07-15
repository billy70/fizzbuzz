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
    
    func testIfMoveForFizzIsCorrect() {
        // Set score to 2 so that the next play increments it to 3
        // which means that the next move should be "Fizz".
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result.correct, true)
    }
    
    func testIfMoveForFizzIsIncorrect() {
        // Set score to 3 so that the next play increments it to 4
        // which means that the next move will NOT be "Fizz".
        game.score = 3
        let result = game.play("Fizz")
        XCTAssertEqual(result.correct, false)
    }
    
    func testIfMoveForBuzzIsCorrect() {
        game.score = 4
        let result = game.play("Buzz")
        XCTAssertEqual(result.correct, true)
    }
    
    func testIfMoveForBuzzIsIncorrect() {
        game.score = 1
        let result = game.play("Buzz")
        XCTAssertEqual(result.correct, false)
    }
    
    func testIfMoveForFizzBuzzIsCorrect() {
        game.score = 14
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result.correct, true)
    }
    
    func testIfMoveForFizzBuzzIsIncorrect() {
        game.score = 1
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result.correct, false)
    }
    
    func testIfMoveForNumberIsCorrect() {
        game.score = 1
        let result = game.play("2")
        XCTAssertEqual(result.correct, true)
    }
    
    func testIfMoveForNumberIsIncorrect() {
        game.score = 14
        let result = game.play("15")
        XCTAssertEqual(result.correct, false)
    }
    
    func testScoreNotIncrementedOnIncorrectMove() {
        game.score = 1
        game.play("Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveIsCorrect() {
        let response = game.play("1")
        XCTAssertNotNil(response.correct)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play("1")
        XCTAssertNotNil(response.score)
    }
    
}

//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by William L. Marr III on 7/15/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()

        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMoveOneIncrementsScore() {
        viewController.play("1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }

    func testMoveTwoIncrementsScoreToTwo() {
        viewController.play("1")
        viewController.play("2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasGameObject() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementsScoreToThree() {
        viewController.game?.score = 2
        viewController.play("Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementsScoreToFive() {
        viewController.game?.score = 4
        viewController.play("Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementsScoreToFifteen() {
        viewController.game?.score = 14
        viewController.play("FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testScoreDoesNotIncrementOnIncorrectMove() {
        viewController.game?.score = 1
        viewController.play("Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
}

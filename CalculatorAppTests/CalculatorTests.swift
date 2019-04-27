//
//  CalculatorTests.swift
//  CalculatorAppTests
//
//  Created by Lukas Carvajal on 26.04.19.
//  Copyright © 2019 AppsByLukas. All rights reserved.
//

import XCTest
@testable import CalculatorApp

class CalculatorTests: XCTestCase {

    var calculator = Calculator()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFirstOperationWhenOperatorIsNoneShouldBe0() {
        calculator.resetOperands()
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .addition, secondOperand: 5), "0")
    }
    
    func testEqualOperationWhenOperatorIsNotSetAndSecondOperantIsFiveShouldBeFive() {
        calculator.resetOperands()
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .equals, secondOperand: 5), "5")
    }
    
    func testEqualOperationWhenOperatorIsSetToAdditionAndFirstOperandIsSetToFiveAndSecondOperandIsFiveShouldBeTen() {
        calculator.currentResult = 5
        calculator.lastOperator = .addition
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .equals, secondOperand: 5), "10")
    }
    
    func testAddFiveWhenAnswerIsZeroShouldBeFive() {
        calculator.currentResult = 0
        calculator.lastOperator = .addition
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .addition, secondOperand: 5), "5")
    }
    
    func testSubtractSixWhenAnswerIsTenShouldBeFour() {
        calculator.currentResult = 10
        calculator.lastOperator = .subtraction
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .subtraction, secondOperand: 6), "4")
    }
    
    func testMultiplyEightWhenAnswerIsEightShouldBeSixtyFour() {
        calculator.currentResult = 8
        calculator.lastOperator = .multiplication
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .multiplication, secondOperand: 8), "64")
    }
    
    func testDivideTenWhenAnswerIsOneHundredShouldBeTen() {
        calculator.currentResult = 100
        calculator.lastOperator = .division
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .division, secondOperand: 10), "10")
    }
    
    func testDivideZeroWhenAnswerIsOneHundredShouldBeNotANumber() {
        calculator.currentResult = 100
        calculator.lastOperator = .division
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .division, secondOperand: 0), "Not a number")
    }
    
    func testResultsWhenResultsContainDecimalsShouldReturnDecimals() {
        calculator.currentResult = 2.1
        calculator.lastOperator = .addition
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .addition, secondOperand: 2), "4.1")
        
        calculator.currentResult = 2.1
        calculator.lastOperator = .subtraction
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .subtraction, secondOperand: 2), "0.1")
        
        calculator.currentResult = 2.1
        calculator.lastOperator = .multiplication
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .multiplication, secondOperand: 2), "4.2")
        
        calculator.currentResult = 2.1
        calculator.lastOperator = .division
        XCTAssertEqual(calculator.calculateAndGetResult(selectedOperator: .division, secondOperand: 2), "1.05")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

//
//  CalculationsTests.swift
//  FirstAssignmentTests
//
//  Created by BKS-GGS on 10/01/23.
//

import XCTest
@testable import FirstAssignment

final class CalculationsTests: XCTestCase {

    var calculations : Calculations?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculations = Calculations()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        calculations = nil
    }
    
    func testAddNumbers() throws {
        var result = calculations?.addNumbers(firstNumber: 2, secondNumber: 4)
        XCTAssertEqual(result, 6)
        
        result = calculations?.addNumbers(firstNumber: 2, secondNumber: nil)
        XCTAssertNil(result)

        result = calculations?.addNumbers(firstNumber: nil, secondNumber: 3)
        XCTAssertNil(result)

        result = calculations?.addNumbers(firstNumber: nil, secondNumber: nil)
        XCTAssertNil(result)
    }
    
    func testSubtractNumbers() throws {
        var result = calculations?.subtractNumbers(firstNumber: 4, secondNumber: 2)
        XCTAssertEqual(result, 2)
        
        result = calculations?.subtractNumbers(firstNumber: 2, secondNumber: nil)
        XCTAssertNil(result)

        result = calculations?.subtractNumbers(firstNumber: nil, secondNumber: 3)
        XCTAssertNil(result)

        result = calculations?.subtractNumbers(firstNumber: nil, secondNumber: nil)
        XCTAssertNil(result)
    }
    
    func testMultiplyNumbers() throws {
        var result = calculations?.multiplyNumbers(firstNumber: 4, secondNumber: 2)
        XCTAssertEqual(result, 8)
        
        result = calculations?.multiplyNumbers(firstNumber: 2, secondNumber: nil)
        XCTAssertNil(result)

        result = calculations?.multiplyNumbers(firstNumber: nil, secondNumber: 3)
        XCTAssertNil(result)

        result = calculations?.multiplyNumbers(firstNumber: nil, secondNumber: nil)
        XCTAssertNil(result)
    }
    
    func testDivideNumbers() throws {
        var result = calculations?.divideNumbers(firstNumber: 4, secondNumber: 2)
        XCTAssertEqual(result, 2)
        
        result = calculations?.divideNumbers(firstNumber: 2, secondNumber: nil)
        XCTAssertNil(result)

        result = calculations?.divideNumbers(firstNumber: nil, secondNumber: 3)
        XCTAssertNil(result)

        result = calculations?.divideNumbers(firstNumber: nil, secondNumber: nil)
        XCTAssertNil(result)
    }
}

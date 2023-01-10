//
//  SortedSetTests.swift
//  FirstAssignmentTests
//
//  Created by BKS-GGS on 10/01/23.
//

import XCTest
@testable import FirstAssignment

final class SortedSetTests: XCTestCase {

    var sortedSet : SortedSet?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sortedSet = SortedSet()
        sortedSet?.numberArray = [40,20,30]
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sortedSet = nil
    }
    
    func testAddNumberToArray() throws {
        sortedSet?.addNumberToArray(number: 40)
        XCTAssertEqual(sortedSet?.numberArray.count, 3)

        sortedSet?.addNumberToArray(number: 60)
        XCTAssertEqual(sortedSet?.numberArray.count, 4)

        sortedSet?.addNumberToArray(number: nil)
        XCTAssertEqual(sortedSet?.numberArray.count, 4)
    }
    
    func testDeleteNumberFromIndex() throws {
        sortedSet?.deleteNumberFromIndex(index: 2)
        XCTAssertEqual(sortedSet?.numberArray.count, 2)
        
        sortedSet?.deleteNumberFromIndex(index: -1)
        XCTAssertEqual(sortedSet?.numberArray.count, 2)

        sortedSet?.deleteNumberFromIndex(index: 5)
        XCTAssertEqual(sortedSet?.numberArray.count, 2)
        
        sortedSet?.deleteNumberFromIndex(index: nil)
        XCTAssertEqual(sortedSet?.numberArray.count, 2)
    }
    
    func testEmptyArray() throws {
        sortedSet?.emptyArray()
        XCTAssertEqual(sortedSet?.numberArray.count, 0)

    }
    
    func testFindMaxValue() throws {
        var maxValue = sortedSet?.findMaxValue()
        XCTAssertEqual(maxValue, 40)

        sortedSet?.deleteNumberFromIndex(index: 0)
        maxValue = sortedSet?.findMaxValue()
        XCTAssertEqual(maxValue, 30)
        
        sortedSet?.addNumberToArray(number: 100)
        maxValue = sortedSet?.findMaxValue()
        XCTAssertEqual(maxValue, 100)
        
        sortedSet?.emptyArray()
        maxValue = sortedSet?.findMaxValue()
        XCTAssertNil(maxValue)
    }
    
    func testFindMinValue() throws {
        var minValue = sortedSet?.findMinValue()
        XCTAssertEqual(minValue, 20)
        
        sortedSet?.addNumberToArray(number: 10)
        minValue = sortedSet?.findMinValue()
        XCTAssertEqual(minValue, 10)
        
        sortedSet?.deleteNumberFromIndex(index: 1)
        minValue = sortedSet?.findMinValue()
        XCTAssertEqual(minValue, 10)
        
        sortedSet?.emptyArray()
        minValue = sortedSet?.findMinValue()
        XCTAssertNil(minValue)
    }
}

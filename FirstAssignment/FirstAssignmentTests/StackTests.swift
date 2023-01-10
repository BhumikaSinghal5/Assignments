//
//  StackTests.swift
//  FirstAssignmentTests
//
//  Created by BKS-GGS on 10/01/23.
//

import XCTest
@testable import FirstAssignment

final class StackTests: XCTestCase {
    
    var stackList : StackCollection?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        stackList = StackCollection()
        stackList?.items = [40,20,30]
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        stackList = nil
    }
    
    func testPush() throws {
        stackList?.push(item: 40)
        XCTAssertEqual(stackList?.items.count, 4)

        stackList?.push(item: nil)
        XCTAssertEqual(stackList?.items.count, 4)
    }
    
    func testPop() throws {
        stackList?.pop()
        XCTAssertEqual(stackList?.items.count, 2)

        stackList?.pop()
        var item = stackList?.peek()
        XCTAssertEqual(stackList?.items.count, 1)
        XCTAssertEqual(item, 40)
        
        stackList?.push(item: 50)
        stackList?.pop()
        item = stackList?.peek()
        XCTAssertEqual(stackList?.items.count, 1)
        XCTAssertEqual(item, 40)

        stackList?.push(item: nil)
        stackList?.pop()
        item = stackList?.peek()
        XCTAssertEqual(stackList?.items.count, 0)
        XCTAssertNil(item)

        stackList?.pop()
        item = stackList?.peek()
        XCTAssertEqual(stackList?.items.count, 0)
        XCTAssertNil(item)
    }
    
    func testPeek() throws {
        stackList?.push(item: 60)
        var item = stackList?.peek()
        XCTAssertEqual(item, 40)
        XCTAssertEqual(stackList?.items.count, 4)
        
        stackList?.pop()
        item = stackList?.peek()
        XCTAssertEqual(item, 40)
        XCTAssertEqual(stackList?.items.count, 3)
        
        stackList?.pop()
        stackList?.pop()
        stackList?.pop()
        item = stackList?.peek()
        XCTAssertNil(item)
        XCTAssertEqual(stackList?.items.count, 0)
    }
}

//
//  QueueTests.swift
//  FirstAssignmentTests
//
//  Created by BKS-GGS on 10/01/23.
//

import XCTest
@testable import FirstAssignment

final class QueueTests: XCTestCase {

    var objQueueCollection : QueueCollection?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objQueueCollection = QueueCollection()
        objQueueCollection?.queue = [40,20,30]
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objQueueCollection = nil
    }

    func testEnqueue() throws {
        objQueueCollection?.enqueue(item: 40)
        XCTAssertEqual(objQueueCollection?.queue.count, 4)

        objQueueCollection?.enqueue(item: nil)
        XCTAssertEqual(objQueueCollection?.queue.count, 4)
    }
    
    func testDequeue() throws {
        objQueueCollection?.dequeue()
        XCTAssertEqual(objQueueCollection?.queue.count, 2)

        objQueueCollection?.dequeue()
        var item = objQueueCollection?.peek()
        XCTAssertEqual(objQueueCollection?.queue.count, 1)
        XCTAssertEqual(item, 30)
        
        objQueueCollection?.enqueue(item: 40)
        objQueueCollection?.dequeue()
        item = objQueueCollection?.peek()
        XCTAssertEqual(objQueueCollection?.queue.count, 1)
        XCTAssertEqual(item, 40)
        
        objQueueCollection?.enqueue(item: nil)
        objQueueCollection?.dequeue()
        item = objQueueCollection?.peek()
        XCTAssertEqual(objQueueCollection?.queue.count, 0)
        XCTAssertNil(item)

        objQueueCollection?.dequeue()
        item = objQueueCollection?.peek()
        XCTAssertEqual(objQueueCollection?.queue.count, 0)
        XCTAssertNil(item)
    }
    
    func testPeek() throws {
        objQueueCollection?.enqueue(item: 60)
        var item = objQueueCollection?.peek()
        XCTAssertEqual(item, 40)
        XCTAssertEqual(objQueueCollection?.queue.count, 4)
        
        objQueueCollection?.dequeue()
        item = objQueueCollection?.peek()
        XCTAssertEqual(item, 20)
        XCTAssertEqual(objQueueCollection?.queue.count, 3)
        
        objQueueCollection?.dequeue()
        objQueueCollection?.dequeue()
        objQueueCollection?.dequeue()
        item = objQueueCollection?.peek()
        XCTAssertNil(item)
        XCTAssertEqual(objQueueCollection?.queue.count, 0)
    }
    
    func testRear() throws {
        objQueueCollection?.enqueue(item: 60)
        var item = objQueueCollection?.rear()
        XCTAssertEqual(item, 60)
        XCTAssertEqual(objQueueCollection?.queue.count, 4)
        
        objQueueCollection?.dequeue()
        item = objQueueCollection?.rear()
        XCTAssertEqual(item, 60)
        XCTAssertEqual(objQueueCollection?.queue.count, 3)
        
        objQueueCollection?.dequeue()
        objQueueCollection?.dequeue()
        objQueueCollection?.dequeue()
        item = objQueueCollection?.rear()
        XCTAssertNil(item)
        XCTAssertEqual(objQueueCollection?.queue.count, 0)
    }
    
    func testFront() throws {
        objQueueCollection?.enqueue(item: 60)
        var item = objQueueCollection?.front()
        XCTAssertEqual(item, 40)
        XCTAssertEqual(objQueueCollection?.queue.count, 4)
        
        objQueueCollection?.dequeue()
        item = objQueueCollection?.front()
        XCTAssertEqual(item, 20)
        XCTAssertEqual(objQueueCollection?.queue.count, 3)
        
        objQueueCollection?.dequeue()
        objQueueCollection?.dequeue()
        objQueueCollection?.dequeue()
        item = objQueueCollection?.front()
        XCTAssertNil(item)
        XCTAssertEqual(objQueueCollection?.queue.count, 0)
    }
}

//
//  UnitTestDemoTests.swift
//  UnitTestDemoTests
//
//  Created by vignesh kumar c on 17/09/24.
//

import XCTest
@testable import UnitTestDemo

final class UnitTestDemoTests: XCTestCase {
    private var sut: TodoViewModel!
    
    override func setUp() {
        super.setUp()
        sut = TodoViewModel()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_AddTask() {
        // Arrange
        let newTodoTask = "newTodo Added"
        let newTodoTaskCount = sut.tasks.count
        
        // Act
        sut.addTask(name: newTodoTask)
        
        //Assert
    
        XCTAssertEqual(sut.tasks.count, newTodoTaskCount + 1)
        XCTAssertEqual(sut.tasks.last?.name, newTodoTask)
    }
    
    func test_Empty() {
        // Arrange
        let newTodoTask = "newTodo Added"
        let newTodoTaskCount = sut.tasks.count
        
        // Act
        sut.addTask(name: "")
        
        //Assert
        
        XCTAssertEqual(sut.tasks.count, newTodoTaskCount)
    }
}

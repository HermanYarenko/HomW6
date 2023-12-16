//
//  HomeWorkIOSUITests.swift
//  HomeWorkIOSUITests
//
//  Created by Герман Яренко on 22.11.23.
//

import XCTest

final class HomeWorkIOSUITests: XCTestCase {
    
    class FriendsModelUITests: XCTestCase {
        
        let app = XCUIApplication()
        
        override func setUp() {
            super.setUp()
            continueAfterFailure = false
            app.launch()
        }
        override func tearDown() {
            super.tearDown()
        }
        
        func testTableViewDisplaysFriends() {
            // Ensure there are friends in the API response
            
            let tablesQuery = app.tables
            let firstFriendCell = tablesQuery.cells.firstMatch
            
            XCTAssertTrue(firstFriendCell.waitForExistence(timeout: 5))
        }
    }
}

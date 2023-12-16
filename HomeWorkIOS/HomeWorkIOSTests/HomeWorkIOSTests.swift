//
//  HomeWorkIOSTests.swift
//  HomeWorkIOSTests
//
//  Created by Герман Яренко on 22.11.23.
//

import XCTest
@testable import HomeWorkIOS

class FriendsTableViewControllerTests: XCTestCase {
    func testTableViewNumberOfRowsInSection() {
        // Шаг 1: Создание stub-объекта UITableView
        let tableViewStub = UITableView()
        
        // Шаг 2: Создание экземпляра класса с реализацией метода tableView(_:numberOfRowsInSection:)
        let viewController = FriendsTableViewController()
        viewController.tableView = tableViewStub
        
        // Шаг 3: Создание тестовых данных
        let testFriends = ["John", "Emma", "Michael"]
        viewController.friends = testFriends
        
        // Шаг 4: Вызов метода tableView(_:numberOfRowsInSection:)
        let numberOfFriends = viewController.tableView(tableViewStub, numberOfRowsInSection: 0)
        
        // Шаг 5: Проверка ожидаемого значения
        XCTAssertEqual(numberOfFriends, testFriends.count)
    }
}

class FriendsTableViewController: UITableViewController {
    var friends = [String]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
}

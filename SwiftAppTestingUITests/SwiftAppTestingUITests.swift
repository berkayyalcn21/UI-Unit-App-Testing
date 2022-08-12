//
//  SwiftAppTestingUITests.swift
//  SwiftAppTestingUITests
//
//  Created by Berkay on 12.08.2022.
//

import XCTest

class SwiftAppTestingUITests: XCTestCase {

    func testToDoItem() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let addButton = app.navigationBars["SwiftAppTesting.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let tf = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier:"Test").element
        
        addButton.tap()
        tf.tap()
        tf.typeText("Test")
        okButton.tap()
        
        XCTAssertTrue(addedCell.exists)
    }
    
    func testDeleteItem() throws {
        let app = XCUIApplication()
        app.launch()
        
        let addButton = app.navigationBars["SwiftAppTesting.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let tf = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier:"Test").element
        
        // Tables
        let tablesQuery = app.tables
        let deleteButton = tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete"]/*[[".cells.buttons[\"Delete\"]",".buttons[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/

        addButton.tap()
        tf.tap()
        tf.typeText("Test")
        okButton.tap()
        addedCell.swipeLeft()
        deleteButton.tap()
        
        XCTAssertFalse(addedCell.exists)
        
    }

}

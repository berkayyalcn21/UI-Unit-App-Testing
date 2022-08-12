//
//  SwiftAppTestingTests.swift
//  SwiftAppTestingTests
//
//  Created by Berkay on 12.08.2022.
//

import XCTest
@testable import SwiftAppTesting

class SwiftAppTestingTests: XCTestCase {

    let math = MathematicFunctions()
    
    func testAdddIntegerFunction() {
        let result = math.addIntegers(x: 5, y: 8)
        XCTAssertEqual(result, 13)
    }
    
    func testmultiplyNumbersFunction() {
        let result = math.multiplyNumbers(x: 5, y: 8)
        XCTAssertEqual(result, 40)
    }
    
    func testdivideIntegersFunction() {
        let result = math.divideIntegers(x: 10, y: 2)
        XCTAssertEqual(result, 5)
    }

}

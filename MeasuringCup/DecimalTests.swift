//
//  DecimalTests.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–18.
//  Copyright © 2016 Ayre. All rights reserved.
//

import XCTest
@testable import MeasuringCup

class DecimalTests: XCTestCase {

    func test_init_worksWithInt() {
        let it = Decimal(Int(3))
        XCTAssertEqual(it.number, Double(3))
    }

    func test_init_worksWithFloat() {
        let it = Decimal(Float(3))
        XCTAssertEqual(it.number, Double(3))
    }

    func test_init_worksWithDouble() {
        let it = Decimal(Double(3))
        XCTAssertEqual(it.number, Double(3))
    }

    func test_equals_shouldBeTrueIfEqual() {
        let it1 = Decimal(3)
        let it2 = Decimal(3.0)
        XCTAssertTrue(it1 == it2)
    }

    func test_equals_shouldBeFalseIfNotEqual() {
        let it1 = Decimal(3)
        let it2 = Decimal(2.0)
        XCTAssertFalse(it1 == it2)
    }

    func test_lessThan_shouldBeTrueIfLessThan() {
        let it1 = Decimal(2)
        let it2 = Decimal(3.0)
        XCTAssertTrue(it1 < it2)
    }

    func test_lessThan_shouldBeFalseIfGreaterThan() {
        let it1 = Decimal(3)
        let it2 = Decimal(2.0)
        XCTAssertFalse(it1 < it2)
    }

    func test_lessThan_shouldBeFalseIfEqual() {
        let it1 = Decimal(3)
        let it2 = Decimal(3.0)
        XCTAssertFalse(it1 < it2)
    }
    
    func test_sum_shouldWork() {
        let it1 = Decimal(3)
        let it2 = Decimal(2.0)
        XCTAssertEqual(it1 + it2, Decimal(5))
    }

    func test_subtraction_shouldWork() {
        let it1 = Decimal(3)
        let it2 = Decimal(2.0)
        XCTAssertEqual(it1 - it2, Decimal(1))
    }

    func test_multiplication_shouldWork() {
        let it1 = Decimal(3)
        let it2 = Decimal(2.0)
        XCTAssertEqual(it1 * it2, Decimal(6))
    }
    
    func test_division_shouldWork() {
        let it1 = Decimal(3)
        let it2 = Decimal(2.0)
        XCTAssertEqual(it1 / it2, Decimal(1.5))
    }
    
}

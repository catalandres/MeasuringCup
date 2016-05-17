//
//  MeasureTests.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–13.
//  Copyright © 2016 Ayre. All rights reserved.
//

import XCTest
@testable import MeasuringCup

class MeasureTests: XCTestCase {
    
    let onemm = Measure(quantity: 1, unit: .millimeters)
    let fiftycm = Measure(quantity: 50, unit: .centimeters)
    let halfm = Measure(quantity: 0.5, unit: .meters)
    let onekm = Measure(quantity: 1, unit: .kilometers)
    let onein = Measure(quantity: 1, unit: .inches)
    let oneft = Measure(quantity: 1, unit: .feet)
    let oneyd = Measure(quantity: 1, unit: .yards)
    let onemi = Measure(quantity: 1, unit: .miles)
    let onem = Measure(quantity: 1, unit: .meters)
    
    let oneg = Measure(quantity: 1, unit: .grams)
    let onekg = Measure(quantity: 1, unit: .kilograms)
    let oneoz = Measure(quantity: 1, unit: .ounces)
    let onelb = Measure(quantity: 1, unit: .pounds)

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_Init_ShouldInitializeMeasurement() {
        XCTAssertEqual(fiftycm.quantity, 50)
        XCTAssertEqual(fiftycm.unit, Unit.centimeters)
    }
    
    func test_Comparisons_Equal() {
        XCTAssertTrue(fiftycm == halfm)
        XCTAssertFalse(fiftycm == onem)
    }

    func test_Comparisons_NotEqual() {
        XCTAssertFalse(fiftycm != halfm)
        XCTAssertTrue(fiftycm != onem)
    }

    func test_Comparisons_LesserThan() {
        XCTAssertTrue(fiftycm < onem)
        XCTAssertFalse(onem < fiftycm)
    }

    func test_Comparisons_LesserThanOrEqualTo() {
        XCTAssertTrue(fiftycm <= halfm)
        XCTAssertTrue(fiftycm <= onem)
        XCTAssertFalse(onem <= fiftycm)
    }

    func test_Comparisons_GreaterThan() {
        XCTAssertTrue(onem > fiftycm)
        XCTAssertFalse(fiftycm > onem)
    }

    func test_Comparisons_GreaterThanOrEqualTo() {
        XCTAssertTrue(fiftycm >= halfm)
        XCTAssertTrue(onem >= fiftycm)
        XCTAssertFalse(fiftycm >= onem)
    }
    
    func test_HashValue_WorksAsExpected() {
        XCTAssertEqual(fiftycm.hashValue, halfm.hashValue)
        XCTAssertNotEqual(onem.hashValue, halfm.hashValue)
        XCTAssertNotEqual(onem.hashValue, onekg.hashValue)
    }
    
    func test_Description_ShouldPrintTheRightProperties() {
        XCTAssertEqual(fiftycm.description, "50 cm")
        XCTAssertEqual(halfm.description, "0.50 m")
        XCTAssertEqual(onekm.description, "1 km")
    }
    
    func test_Abbreviation_ShouldOutputRightValues() {
        XCTAssertEqual(onemm.unit.symbol, "mm")
        XCTAssertEqual(fiftycm.unit.symbol, "cm")
        XCTAssertEqual(onem.unit.symbol, "m")
        XCTAssertEqual(onekm.unit.symbol, "km")
        XCTAssertEqual(onein.unit.symbol, "in")
        XCTAssertEqual(oneft.unit.symbol, "ft")
        XCTAssertEqual(oneyd.unit.symbol, "yd")
        XCTAssertEqual(onemi.unit.symbol, "mi")
    }
    
    func test_Product_WorksBothWays_withInt() {
        let prod1 = onemm * 3
        XCTAssertEqual(prod1.quantity, 3)
        XCTAssertEqual(prod1.unit, onemm.unit)
        let prod2 = 3 * onemm
        XCTAssertEqual(prod2.quantity, 3)
        XCTAssertEqual(prod2.unit, onemm.unit)
    }

    func test_Product_WorksBothWays_withFloat() {
        let prod1 = onemm * Float(3)
        XCTAssertEqual(prod1.quantity, 3)
        XCTAssertEqual(prod1.unit, onemm.unit)
        let prod2 = Float(3) * onemm
        XCTAssertEqual(prod2.quantity, 3)
        XCTAssertEqual(prod2.unit, onemm.unit)
    }

    func test_Product_WorksBothWays_withDouble() {
        let prod1 = onemm * Double(3)
        XCTAssertEqual(prod1.quantity, 3)
        XCTAssertEqual(prod1.unit, onemm.unit)
        let prod2 = Double(3) * onemm
        XCTAssertEqual(prod2.quantity, 3)
        XCTAssertEqual(prod2.unit, onemm.unit)
    }

    func test_Sum_ShouldWorkWithSameUnit() {
        let sum = onem + halfm
        XCTAssertEqual(sum, Measure(quantity: 1.5, unit: .meters))
    }
    
    func test_Sum_ShouldWorkWithDifferentUnits() {
        let sum = halfm + onekm
        XCTAssertEqual(sum, Measure(quantity: 1000.5, unit: .meters))
    }
    
    func test_Difference_ShouldWorkWithSameUnit() {
        let sum = halfm - onem
        XCTAssertEqual(sum, Measure(quantity: -0.5, unit: .meters))
    }
    
    func test_Difference_ShouldWorkWithDifferentUnits() {
        let sum = onekm - halfm
        XCTAssertEqual(sum, Measure(quantity: 999.5, unit: .meters))
    }
    
    func test_To_() {
        let to = halfm.to(.millimeters)
        XCTAssertEqual(to, Measure(quantity: 500, unit: .millimeters))
    }
}

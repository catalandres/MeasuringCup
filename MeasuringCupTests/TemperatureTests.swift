//
//  TemperatureTests.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–24.
//  Copyright © 2016 Ayre. All rights reserved.
//

import XCTest
@testable import MeasuringCup

class TemperatureTests: XCTestCase {
    
    // https://en.wikipedia.org/wiki/Fahrenheit
    func test_wikipedia() {
        XCTAssertEqual(0.kelvin, (-273.15).celsius)
        XCTAssertEqual(0.celsius, 273.15.kelvin)
        XCTAssertEqual(0.celsius, 32.fahrenheit)
        XCTAssertEqual((-40).celsius, (-40).fahrenheit)
        XCTAssertEqual(41.fahrenheit, 5.celsius)
        XCTAssertEqual(50.fahrenheit, 10.celsius)
        XCTAssertEqual(59.fahrenheit, 15.celsius)
    }
    
}

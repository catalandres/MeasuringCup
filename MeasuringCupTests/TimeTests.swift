//
//  TimeTests.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–25.
//  Copyright © 2016 Ayre. All rights reserved.
//

import XCTest
@testable import MeasuringCup

class TimeTests: XCTestCase {
    
    func test_time_unitsShouldWork() {
        XCTAssertEqual(1.weeks, 7.days)
        XCTAssertEqual(1.days, 24.hours)
        XCTAssertEqual(1.hours, 60.minutes)
        XCTAssertEqual(1.minutes, 60.seconds)
        XCTAssertEqual(1.seconds, 1_000.milliseconds)
        XCTAssertEqual(1.milliseconds, 1_000.microseconds)
        XCTAssertEqual(1.microseconds, 1_000.nanoseconds)
    }
    
    func test_time_initializerShouldWork() {
        let start = NSDate()
        let end = start.dateByAddingTimeInterval(100)
        let interval = end.timeIntervalSinceDate(start)
        let it = Time(timeInterval: interval)
        XCTAssertEqual(it, 100.seconds)
    }
    
}

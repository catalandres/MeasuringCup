//
//  InformationTests.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–24.
//  Copyright © 2016 Ayre. All rights reserved.
//

import XCTest
@testable import MeasuringCup

class InformationTests: XCTestCase {
    
    func test_SIBytes() {
        XCTAssertEqual(1.kilobytes, 1000.bytes)
        XCTAssertEqual(1.megabytes, 1000.kilobytes)
        XCTAssertEqual(1.gigabytes, 1000.megabytes)
        XCTAssertEqual(1.terabytes, 1000.gigabytes)
        XCTAssertEqual(1.petabytes, 1000.terabytes)
        XCTAssertEqual(1.exabytes, 1000.petabytes)
        XCTAssertEqual(1.zettabytes, 1000.exabytes)
        XCTAssertEqual(1.yottabytes, 1000.zettabytes)
    }
    
    func test_binaryBytes() {
        XCTAssertEqual(1.kibibytes, 1024.bytes)
        XCTAssertEqual(1.mebibytes, 1024.kibibytes)
        XCTAssertEqual(1.gibibytes, 1024.mebibytes)
        XCTAssertEqual(1.tebibytes, 1024.gibibytes)
        XCTAssertEqual(1.pebibytes, 1024.tebibytes)
        XCTAssertEqual(1.exbibytes, 1024.pebibytes)
        XCTAssertEqual(1.zebibytes, 1024.exbibytes)
        XCTAssertEqual(1.yobibytes, 1024.zebibytes)
    }
    
    func test_SIBits() {
        XCTAssertEqual(1.bytes, 8.bits)
        XCTAssertEqual(1.kilobits, 1000.bits)
        XCTAssertEqual(1.megabits, 1000.kilobits)
        XCTAssertEqual(1.gigabits, 1000.megabits)
        XCTAssertEqual(1.terabits, 1000.gigabits)
        XCTAssertEqual(1.petabits, 1000.terabits)
        XCTAssertEqual(1.exabits, 1000.petabits)
        XCTAssertEqual(1.zettabits, 1000.exabits)
        XCTAssertEqual(1.yottabits, 1000.zettabits)
    }
    
    func test_binaryBits() {
        XCTAssertEqual(1.kibibits, 1024.bits)
        XCTAssertEqual(1.mebibits, 1024.kibibits)
        XCTAssertEqual(1.gibibits, 1024.mebibits)
        XCTAssertEqual(1.tebibits, 1024.gibibits)
        XCTAssertEqual(1.pebibits, 1024.tebibits)
        XCTAssertEqual(1.exbibits, 1024.pebibits)
        XCTAssertEqual(1.zebibits, 1024.exbibits)
        XCTAssertEqual(1.yobibits, 1024.zebibits)
    }

}

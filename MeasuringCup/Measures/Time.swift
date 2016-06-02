//
//  Temperature.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Time: ConvertibleMeasure {
    
    public typealias U = Unit
    
    public let quantity: Double
    public let unit: Unit
    
    public init(quantity: MeasureNumber, unit: Unit) {
        self.quantity = Double(quantity)
        self.unit = unit
    }
    
    public init(timeInterval: NSTimeInterval) {
        self.quantity = timeInterval as Double
        self.unit = .seconds
    }

    public enum Unit: ConvertibleUnitType {
        case nanoseconds, microseconds, milliseconds, seconds, minutes, hours, days, weeks
        
        public var symbol: String {
            return Time.unitValues(self).symbol
        }
        public var factor: Double {
            return Time.unitValues(self).factor
        }
        public var shift: Double? {
            return nil
        }
        
        public static var baseUnit: Unit {
            return .seconds
        }
    }
    
    static private func unitValues(unit: Unit) -> (factor: Double, symbol: String) {
        switch unit {
        case .nanoseconds:
            return (pow(10, -9), "ns")
        case .microseconds:
            return (pow(10, -6), "μs")
        case .milliseconds:
            return (pow(10, -3), "ms")
        case .seconds:
            return (pow(10, 0), "s")
        case .minutes:
            return (60, "min")
        case .hours:
            return (60 * 60, "h")
        case .days:
            return (60 * 60 * 24, "d")
        case .weeks:
            return (60 * 60 * 24 * 7, "wk")
        }
    }
}
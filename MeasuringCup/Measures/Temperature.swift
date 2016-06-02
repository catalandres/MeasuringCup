//
//  Temperature.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Temperature: ConvertibleMeasure {
    
    public typealias U = Unit
    
    public let quantity: Double
    public let unit: Unit
    
    public init(quantity: MeasureNumber, unit: Unit) {
        self.quantity = Double(quantity)
        self.unit = unit
    }

    public enum Unit: ConvertibleUnitType {
        case celsius, kelvin, fahrenheit
        
        public var symbol: String {
            return Temperature.unitValues(self).symbol
        }
        public var factor: Double {
            return Temperature.unitValues(self).factor
        }
        public var shift: Double? {
            return Temperature.unitValues(self).shift
        }
        
        public static var baseUnit: Unit {
            return .celsius
        }
    }
    
    static private func unitValues(unit: Unit) -> (shift: Double?, factor: Double, symbol: String) {
        switch unit {
        case .celsius:
            return (0, 1, "°C")
        case .kelvin:
            return (-273.15, 1, "K")
        case .fahrenheit:
            return (-32, 5.0 / 9, "K")
        }
    }
}
//
//  Length.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Length: ConvertibleMeasure {
    
    public typealias U = Unit
    
    public let quantity: Double
    public let unit: Unit
    
    public init(quantity: MeasureNumber, unit: Unit) {
        self.quantity = Double(quantity)
        self.unit = unit
    }
    
    public enum Unit: ConvertibleUnitType {
        case yoctometers, zeptometers, attometers, femtometers, picometers, nanometers, micrometers, millimeters, centimeters, decimeters, meters, decameters, hectometers, kilometers, megameters, gigameters, terameters, petameters, exameters, zettameters, yottameters
        case fermis, ångströms, microns
        case thou, mils, inches, feet, yards, miles, leagues
        case surveyLinks, surveyFeet, surveyRods, surveyChains, surveyMiles, surveyFurlongs
        case fathoms, nauticalMiles
        
        public var symbol: String {
            return Length.unitValues(self).symbol
        }
        public var description: String {
            return Length.unitValues(self).symbol
        }
        public var factor: Double {
            return Length.unitValues(self).factor
        }
        public var shift: Double? {
            return nil
        }
        
        public static var baseUnit: Unit {
            return .meters
        }
    }
    
    static private func unitValues(unit: Unit) -> (factor: Double, symbol: String) {
        let ft👉🏻m: Double = 0.304_8
        
        switch unit {
        case .yoctometers:
            return (pow(10, -24), "ym")
        case .zeptometers:
            return (pow(10, -21), "zm")
        case .attometers:
            return (pow(10, -18), "am")
        case .femtometers:
            return (pow(10, -15), "fm")
        case .picometers:
            return (pow(10, -12), "pm")
        case .nanometers:
            return (pow(10, -9), "nm")
        case .micrometers:
            return (pow(10, -6), "μm")
        case .millimeters:
            return (pow(10, -3), "mm")
        case .centimeters:
            return (pow(10, -2), "cm")
        case .decimeters:
            return (pow(10, -1), "dm")
        case .meters:
            return (pow(10, 0), "m")
        case .decameters:
            return (pow(10, 1), "dam")
        case .hectometers:
            return (pow(10, 2), "hm")
        case .kilometers:
            return (pow(10, 3), "km")
        case .megameters:
            return (pow(10, 6), "Mm")
        case .gigameters:
            return (pow(10, 9), "Gm")
        case .terameters:
            return (pow(10, 12), "Tm")
        case .petameters:
            return (pow(10, 15), "Pm")
        case .exameters:
            return (pow(10, 18), "Em")
        case .zettameters:
            return (pow(10, 21), "Zm")
        case .yottameters:
            return (pow(10, 24), "Ym")
            
        case .fermis:
            return (pow(10, -15), "fm")
        case .ångströms:
            return (pow(10, -10), "Å")
        case .microns:
            return (pow(10, -6), "μm")
            
        case .thou, .mils:
            return (ft👉🏻m / 12 / 1000, "thou")
        case .inches:
            return (ft👉🏻m / 12, "in")
        case .feet:
            return (ft👉🏻m, "ft")
        case .yards:
            return (ft👉🏻m * 3, "yd")
        case .miles:
            return (ft👉🏻m * 5_280, "mi")
        case .leagues:
            return (ft👉🏻m * 5_280 * 3, "lg")
            
        case .surveyLinks:
            return (ft👉🏻m * 5_280 / 0.999_998 / 8_000, "li")
        case .surveyFeet:
            return (ft👉🏻m / 0.999_998, "ft")
        case .surveyRods:
            return (ft👉🏻m * 5_280 / 0.999_998 / 320, "rd")
        case .surveyChains:
            return (ft👉🏻m * 5_280 / 0.999_998 / 80, "ch")
        case .surveyFurlongs:
            return (ft👉🏻m / 0.999_998 * 660, "fur")
        case .surveyMiles:
            return (ft👉🏻m * 5_280 / 0.999_998, "mi")
            
        case .fathoms:
            return (ft👉🏻m * 6, "fath")
        case .nauticalMiles:
            return (1852, "nmi")
        }
    }
}

//
//  Area.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Area: ConvertibleMeasure {
    
    public typealias U = Unit
    
    public let quantity: Double
    public let unit: Unit
    
    public init(quantity: MeasureNumber, unit: Unit) {
        self.quantity = Double(quantity)
        self.unit = unit
    }
 
    public enum Unit: ConvertibleUnitType {
        case squareYoctometers, squareZeptometers, squareAttometers, squareFemtometers, squarePicometers, squareNanometers, squareMicrometers, squareMillimeters, squareCentimeters, squareDecimeters, squareMeters, squareDecameters, squareHectometers, squareKilometers, squareMegameters, squareGigameters, squareTerameters, squarePetameters, squareExameters, squareZettameters, squareYottameters
        case centiares, deciares, ares, decares, hectares
        case squareSurveyFeet, squareSurveyRods, squareSurveyChains, squareSurveyMiles
        case acres
        case squareInches, squareFeet, squareYards, squareMiles, squareRods
        
        public var symbol: String {
            return Area.unitValues(self).symbol
        }
        public var factor: Double {
            return Area.unitValues(self).factor
        }
        public var shift: Double? {
            return nil
        }
        
        public static var baseUnit: Unit {
            return .squareMeters
        }
    }
    
    static private func unitValues(unit: Unit) -> (factor: Double, symbol: String) {
        let ft👉🏻m: Double = 0.3048
        
        switch unit {
        case .squareYoctometers:
            return (pow(10, -48), "ym²")
        case .squareZeptometers:
            return (pow(10, -42), "zm²")
        case .squareAttometers:
            return (pow(10, -36), "am²")
        case .squareFemtometers:
            return (pow(10, -30), "fm²")
        case .squarePicometers:
            return (pow(10, -24), "pm²")
        case .squareNanometers:
            return (pow(10, -18), "nm²")
        case .squareMicrometers:
            return (pow(10, -12), "μm²")
        case .squareMillimeters:
            return (pow(10, -6), "mm²")
        case .squareCentimeters:
            return (pow(10, -4), "cm²")
        case .squareDecimeters:
            return (pow(10, -2), "dm²")
        case .squareMeters:
            return (pow(10, 0), "m²")
        case .squareDecameters:
            return (pow(10, 2), "dam²")
        case .squareHectometers:
            return (pow(10, 4), "hm²")
        case .squareKilometers:
            return (pow(10, 6), "km²")
        case .squareMegameters:
            return (pow(10, 12), "Mm²")
        case .squareGigameters:
            return (pow(10, 18), "Gm²")
        case .squareTerameters:
            return (pow(10, 24), "Tm²")
        case .squarePetameters:
            return (pow(10, 30), "Pm²")
        case .squareExameters:
            return (pow(10, 36), "Em²")
        case .squareZettameters:
            return (pow(10, 42), "Zm²")
        case .squareYottameters:
            return (pow(10, 48), "Ym²")
            
        case .centiares:
            return (pow(10, 0), "ca")
        case .deciares:
            return (pow(10, 1), "da")
        case .ares:
            return (pow(10, 2), "a")
        case .decares:
            return (pow(10, 3), "daa")
        case .hectares:
            return (pow(10, 4), "ha")
            
        case .acres:
            return (pow(ft👉🏻m / 0.999_998 * 5280, 2) / 640, "ac")
            
        case .squareInches:
            return (pow(ft👉🏻m / 12, 2), "in²")
        case .squareFeet:
            return (pow(ft👉🏻m, 2), "ft²")
        case .squareYards:
            return (pow(ft👉🏻m * 3, 2), "yd²")
        case .squareMiles:
            return (pow(ft👉🏻m * 5280, 2), "mi²")
        case .squareRods:
            return (pow(ft👉🏻m * 16.5, 2), "rd²")
            
        case .squareSurveyFeet:
            return (pow(ft👉🏻m / 0.999_998, 2), "ft²")
        case .squareSurveyRods:
            return (pow(ft👉🏻m / 0.999_998 * 16.5, 2), "rd²")
        case .squareSurveyChains:
            return (pow(ft👉🏻m * 5_280 / 0.999_998 / 80, 2), "ch²")
        case .squareSurveyMiles:
            return (pow(ft👉🏻m / 0.999_998 * 5280, 2), "mi²")
        }
    }
}
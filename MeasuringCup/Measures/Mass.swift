//
//  Mass.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Mass: ConvertibleMeasure {
    
    public typealias U = Unit
    
    public let quantity: Double
    public let unit: Unit
    
    public init(quantity: MeasureNumber, unit: Unit) {
        self.quantity = Double(quantity)
        self.unit = unit
    }

    public enum Unit: ConvertibleUnitType {
        public enum System {
            case british, american
        }
        
        case yoctograms, zeptograms, attograms, femtograms, picograms, nanograms, micrograms, milligrams, centigrams, decigrams, grams, decagrams, hectograms, kilograms, megagrams, gigagrams, teragrams, petagrams, exagrams, zettagrams, yottagrams
        case metricTons
        case carats, grains, drams, ounces, pounds, quarters(System), hundredweights(System), longHundredweights, tons(System), longTons, stone
        case pennyweights, ouncesTroy, poundsTroy
        case scruples, dramsApothecaries, ouncesApothecaries, poundsApothecaries
        
        public var symbol: String {
            return Mass.unitValues(self).symbol
        }
        public var description: String {
            return Mass.unitValues(self).symbol
        }
        public var factor: Double {
            return Mass.unitValues(self).factor
        }
        public var shift: Double? {
            return nil
        }
        
        public static var baseUnit: Unit {
            return .kilograms
        }
    }
    
    static private func unitValues(unit: Unit) -> (factor: Double, symbol: String) {
        // MARK: - Constants
        let lb👉🏻g: Double = 453.59237
        
        switch unit {
        case .yoctograms:
            return (pow(10, -24), "yg")
        case .zeptograms:
            return (pow(10, -21), "zg")
        case .attograms:
            return (pow(10, -18), "ag")
        case .femtograms:
            return (pow(10, -15), "fg")
        case .picograms:
            return (pow(10, -12), "pg")
        case .nanograms:
            return (pow(10, -9), "ng")
        case .micrograms:
            return (pow(10, -6), "μg")
        case .milligrams:
            return (pow(10, -3), "mg")
        case .centigrams:
            return (pow(10, -2), "cg")
        case .decigrams:
            return (pow(10, -1), "dg")
        case .grams:
            return (pow(10, 0), "g")
        case .decagrams:
            return (pow(10, 1), "dag")
        case .hectograms:
            return (pow(10, 2), "hg")
        case .kilograms:
            return (pow(10, 3), "kg")
        case .megagrams:
            return (pow(10, 6), "Mg")
        case .gigagrams:
            return (pow(10, 9), "Gg")
        case .teragrams:
            return (pow(10, 12), "Tg")
        case .petagrams:
            return (pow(10, 15), "Pg")
        case .exagrams:
            return (pow(10, 18), "Eg")
        case .zettagrams:
            return (pow(10, 21), "Zg")
        case .yottagrams:
            return (pow(10, 24), "Yg")
            
        case .metricTons:
            return (pow(10, 6), "t")
            
        case .carats:
            return (200 * pow(10, -3), "c")
        case .grains:
            return (lb👉🏻g / 7000, "gr")
        case .drams:
            return (lb👉🏻g / 256, "dr")
        case .ounces:
            return (lb👉🏻g / 16, "oz")
        case .pounds:
            return (lb👉🏻g, "lb")
        case .stone:
            return (lb👉🏻g * 14, "qr")
        case .quarters(let system):
            switch system {
            case .british:
                return (lb👉🏻g * 28, "qr")
            case .american:
                return (lb👉🏻g * 25, "qr")
            }
        case .hundredweights(let system):
            switch system {
            case .british:
                return (lb👉🏻g * 112, "cwt")
            case .american:
                return (lb👉🏻g * 100, "cwt")
            }
        case .longHundredweights:
            return (lb👉🏻g * 112, "cwt")
        case .tons(let system):
            switch system {
            case .british:
                return (lb👉🏻g * 2240, "tn")
            case .american:
                return (lb👉🏻g * 2000, "tn")
            }
        case .longTons:
            return (lb👉🏻g * 2240, "tn")
            
        case .pennyweights:
            return (lb👉🏻g / 7000 * 24, "dwt")
        case .ouncesTroy:
            return (lb👉🏻g / 7000 * 24 * 20, "oz t")
        case .poundsTroy:
            return (lb👉🏻g / 7000 * 24 * 20 * 12, "lb t")
            
        case .scruples:
            return (lb👉🏻g / 7000 * 20, "s ap")
        case .dramsApothecaries:
            return (lb👉🏻g / 7000 * 20 * 3, "dr ap")
        case .ouncesApothecaries:
            return (lb👉🏻g / 7000 * 20 * 3 * 8, "oz ap")
        case .poundsApothecaries:
            return (lb👉🏻g / 7000 * 20 * 3 * 8 * 12, "lb ap")
        }
    }
}
//
//  Length.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Volume: ConvertibleMeasure {
    
    public typealias U = Unit
    
    public let quantity: Double
    public let unit: Unit
    
    public init(quantity: MeasureNumber, unit: Unit) {
        self.quantity = Double(quantity)
        self.unit = unit
    }

    public enum Type {
        case volume, liquidVolume, dryVolume
    }
    
    public enum Unit: ConvertibleUnitType {
        public enum System {
            case british, american
        }
        
        case cubicYoctometers, cubicZeptometers, cubicAttometers, cubicFemtometers, cubicPicometers, cubicNanometers, cubicMicrometers, cubicMillimeters, cubicCentimeters, cubicDecimeters, cubicMeters, cubicDecameters, cubicHectometers, cubicKilometers, cubicMegameters, cubicGigameters, cubicTerameters, cubicPetameters, cubicExameters, cubicZettameters, cubicYottameters
        case yoctoliters, zeptoliters, attoliters, femtoliters, picoliters, nanoliters, microliters, milliliters, centiliters, deciliters, liters, decaliters, hectoliters, kiloliters, megaliters, gigaliters, teraliters, petaliters, exaliters, zettaliters, yottaliters
        case cubicInches, cubicFeet, cubicYards, cubicMiles
        case minims(System), fluidScruples(System), teaspoons, tablespoons, cups, fluidOunces(System), fluidDrams(System), fluidDrachms(System), gills(System), pints(System), quarts(System), gallons(System), cords, pecks(System), bushels(System)
        case dryQuarts, dryPints
        
        public var type: Type {
            return Volume.unitValues(self).type
        }
        public var symbol: String {
            return Volume.unitValues(self).symbol
        }
        public var factor: Double {
            return Volume.unitValues(self).factor
        }
        public var shift: Double? {
            return nil
        }
        
        public static var baseUnit: Unit {
            return .liters
        }
    }
    
    static private func unitValues(unit: Unit) -> (type: Type, factor: Double, symbol: String) {
        // MARK: - Constants
        let ft👉🏻m: Double = 0.3048
        let l👉🏻m³: Double = pow(10, -3)
        let gal👉🏻m³: Double = 231 * pow(ft👉🏻m / 12, 3)
        
        switch unit {
        case .cubicYoctometers:
            return (.volume, pow(10, -72), "ym³")
        case .cubicZeptometers:
            return (.volume, pow(10, -63), "zm³")
        case .cubicAttometers:
            return (.volume, pow(10, -54), "am³")
        case .cubicFemtometers:
            return (.volume, pow(10, -45), "fm³")
        case .cubicPicometers:
            return (.volume, pow(10, -36), "pm³")
        case .cubicNanometers:
            return (.volume, pow(10, -27), "nm³")
        case .cubicMicrometers:
            return (.volume, pow(10, -18), "μm³")
        case .cubicMillimeters:
            return (.volume, pow(10, -9), "mm³")
        case .cubicCentimeters:
            return (.volume, pow(10, -6), "cm³")
        case .cubicDecimeters:
            return (.volume, pow(10, -3), "dm³")
        case .cubicMeters:
            return (.volume, pow(10, 0), "m³")
        case .cubicDecameters:
            return (.volume, pow(10, 3), "dam³")
        case .cubicHectometers:
            return (.volume, pow(10, 6), "hm³")
        case .cubicKilometers:
            return (.volume, pow(10, 9), "km³")
        case .cubicMegameters:
            return (.volume, pow(10, 18), "Mm³")
        case .cubicGigameters:
            return (.volume, pow(10, 27), "Gm³")
        case .cubicTerameters:
            return (.volume, pow(10, 36), "Tm³")
        case .cubicPetameters:
            return (.volume, pow(10, 45), "Pm³")
        case .cubicExameters:
            return (.volume, pow(10, 54), "Em³")
        case .cubicZettameters:
            return (.volume, pow(10, 63), "Zm³")
        case .cubicYottameters:
            return (.volume, pow(10, 72), "Ym³")
            
        case .yoctoliters:
            return (.volume, l👉🏻m³ * pow(10, -24), "yl")
        case .zeptoliters:
            return (.volume, l👉🏻m³ * pow(10, -21), "zl")
        case .attoliters:
            return (.volume, l👉🏻m³ * pow(10, -18), "al")
        case .femtoliters:
            return (.volume, l👉🏻m³ * pow(10, -15), "fl")
        case .picoliters:
            return (.volume, l👉🏻m³ * pow(10, -12), "pl")
        case .nanoliters:
            return (.volume, l👉🏻m³ * pow(10, -9), "nl")
        case .microliters:
            return (.volume, l👉🏻m³ * pow(10, -6), "μl")
        case .milliliters:
            return (.volume, l👉🏻m³ * pow(10, -3), "ml")
        case .centiliters:
            return (.volume, l👉🏻m³ * pow(10, -2), "cl")
        case .deciliters:
            return (.volume, l👉🏻m³ * pow(10, -1), "dl")
        case .liters:
            return (.volume, l👉🏻m³ * pow(10, 0), "l")
        case .decaliters:
            return (.volume, l👉🏻m³ * pow(10, 1), "dal")
        case .hectoliters:
            return (.volume, l👉🏻m³ * pow(10, 2), "hl")
        case .kiloliters:
            return (.volume, l👉🏻m³ * pow(10, 3), "kl")
        case .megaliters:
            return (.volume, l👉🏻m³ * pow(10, 6), "Ml")
        case .gigaliters:
            return (.volume, l👉🏻m³ * pow(10, 9), "Gl")
        case .teraliters:
            return (.volume, l👉🏻m³ * pow(10, 12), "Tl")
        case .petaliters:
            return (.volume, l👉🏻m³ * pow(10, 15), "Pl")
        case .exaliters:
            return (.volume, l👉🏻m³ * pow(10, 18), "El")
        case .zettaliters:
            return (.volume, l👉🏻m³ * pow(10, 21), "Zl")
        case .yottaliters:
            return (.volume, l👉🏻m³ * pow(10, 24), "Yl")
            
        case .cubicInches:
            return (.volume, pow(ft👉🏻m / 12, 3), "in³")
        case .cubicFeet:
            return (.volume, pow(ft👉🏻m, 3), "ft³")
        case .cubicYards:
            return (.volume, pow(ft👉🏻m * 3, 3), "yd³")
        case .cubicMiles:
            return (.volume, pow(ft👉🏻m * 5280, 3), "mi³")
        case .minims(.british):
            return (.volume, l👉🏻m³ * 4.546_09 / 160 / 8 / 60, "min")
        case .minims(.american):
            return (.liquidVolume, gal👉🏻m³ / 1024 / 60, "min")
        case .fluidScruples(.british):
            return (.volume, l👉🏻m³ * 4.546_09 / 160 / 8 / 60 * 20, "min")
        case .fluidScruples(.american):
            return (.liquidVolume, gal👉🏻m³ / 1024 / 60 * 20, "min")
        case .fluidDrams(.british):
            return (.volume, l👉🏻m³ * 4.546_09 / 160 / 8, "fl dr")
        case .fluidDrams(.american):
            return (.liquidVolume, gal👉🏻m³ / 1024, "fl dr")
        case .fluidDrachms(.british):
            return (.volume, l👉🏻m³ * 4.546_09 / 160 / 8, "fl dr")
        case .fluidDrachms(.american):
            return (.liquidVolume, gal👉🏻m³ / 1024, "fl dr")
        case .fluidOunces(.british):
            return (.volume, l👉🏻m³ * 4.546_09 / 160, "gi")
        case .fluidOunces(.american):
            return (.liquidVolume, gal👉🏻m³ / 128, "fl oz")
        case .gills(.british):
            return (.volume, l👉🏻m³ * 4.546_09 / 32, "gi")
        case .gills(.american):
            return (.liquidVolume, gal👉🏻m³ / 32, "gi")
        case .pints(.british):
            return (.volume, l👉🏻m³ * 4.546_09 / 8, "pt")
        case .pints(.american):
            return (.liquidVolume, gal👉🏻m³ / 8, "pt")
        case .quarts(.british):
            return (.volume, l👉🏻m³ * 4.546_09 / 4, "qt")
        case .quarts(.american):
            return (.liquidVolume, gal👉🏻m³ / 4, "qt")
        case .gallons(.british):
            return (.volume, l👉🏻m³ * 4.546_09, "gal")
        case .gallons(.american):
            return (.liquidVolume, gal👉🏻m³, "gal")

        case .cords:
            return (.dryVolume, 128 * pow(ft👉🏻m, 3), "cd")
        case .pecks(.british):
            return (.volume, 2 * l👉🏻m³ * 4.546_09, "pk")
        case .pecks(.american):
            return (.dryVolume, 35.239_070_166_88 * l👉🏻m³ / 4, "pk")
        case .bushels(.british):
            return (.volume, 8 * l👉🏻m³ * 4.546_09, "bu")
        case .bushels(.american):
            return (.dryVolume, 35.239_070_166_88 * l👉🏻m³, "bu")
        case .dryPints:
            return (.dryVolume, 35.239_070_166_88 * l👉🏻m³ / 64, "pt")
        case .dryQuarts:
            return (.dryVolume, 35.239_070_166_88 * l👉🏻m³ / 32, "pt")
            
        // MARK: Kitchen volume
        case .teaspoons:
            return (.volume, gal👉🏻m³ / 768, "tsp")
        case .tablespoons:
            return (.volume, gal👉🏻m³ / 256, "tbsp")
        case .cups:
            return (.volume, gal👉🏻m³ / 128 * 8, "cu")
        }
    }
    
}
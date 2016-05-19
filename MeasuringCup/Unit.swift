//
//  LengthUnit.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–14.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public enum Unit: Equatable {

    //Length - SI
    case yoctometers, zeptometers, attometers, femtometers, picometers, nanometers, micrometers, millimeters, centimeters, decimeters, meters, decameters, hectometers, kilometers, megameters, gigameters, terameters, petameters, exameters, zettameters, yottameters
    case fermis, ångströms, microns
    case thou, mils, inches, feet, yards, miles, leagues, rods, furlongs, links, chains
    case fathoms, nauticalMiles
    
    //Mass
    case yoctograms, zeptograms, attograms, femtograms, picograms, nanograms, micrograms, milligrams, centigrams, decigrams, grams, decagrams, hectograms, kilograms, megagrams, gigagrams, teragrams, petagrams, exagrams, zettagrams, yottagrams
    case metricTons
    case carats, grains, drams, ounces, pounds, quarters(MeasureSystem), hundredweights(MeasureSystem), longHundredweights, tons(MeasureSystem), longTons, stone
    case pennyweights, ouncesTroy, poundsTroy
    case scruples, dramsApothecaries, ouncesApothecaries, poundsApothecaries
    
    //Area
    case squareYoctometers, squareZeptometers, squareAttometers, squareFemtometers, squarePicometers, squareNanometers, squareMicrometers, squareMillimeters, squareCentimeters, squareDecimeters, squareMeters, squareDecameters, squareHectometers, squareKilometers, squareMegameters, squareGigameters, squareTerameters, squarePetameters, squareExameters, squareZettameters, squareYottameters
    case centiares, deciares, ares, decares, hectares
    case acres
    case squareInches, squareFeet, squareYards, squareMiles, squareRods
    
    //Volume
    case cubicYoctometers, cubicZeptometers, cubicAttometers, cubicFemtometers, cubicPicometers, cubicNanometers, cubicMicrometers, cubicMillimeters, cubicCentimeters, cubicDecimeters, cubicMeters, cubicDecameters, cubicHectometers, cubicKilometers, cubicMegameters, cubicGigameters, cubicTerameters, cubicPetameters, cubicExameters, cubicZettameters, cubicYottameters
    case yoctoliters, zeptoliters, attoliters, femtoliters, picoliters, nanoliters, microliters, milliliters, centiliters, deciliters, liters, decaliters, hectoliters, kiloliters, megaliters, gigaliters, teraliters, petaliters, exaliters, zettaliters, yottaliters
    case cubicInches, cubicFeet, cubicYards, cubicMiles
    case minims(MeasureSystem), fluidScruples(MeasureSystem), teaspoons, tablespoons, cups, fluidOunces(MeasureSystem), fluidDrams(MeasureSystem), fluidDrachms(MeasureSystem), gills(MeasureSystem), pints(MeasureSystem), quarts(MeasureSystem), gallons(MeasureSystem), cords, pecks, bushels
    
    public var type: UnitType {
        return Unit.values(self).type
    }
    public var convertible: Bool {
        return self.factor != nil
    }
    public var factor: Double? {
        return Unit.values(self).factor
    }
    public var symbol: String {
        return Unit.values(self).symbol
    }
    
    static private func values(unit: Unit) -> (type: UnitType, factor: Double?, symbol: String) {
        // MARK: - Constants
        let ft👉🏻m: Double = 0.3048
        let lb👉🏻g: Double = 453.59237
        let l👉🏻m³: Double = pow(10, -3)
        let gal👉🏻m³: Double = 231 * pow(ft👉🏻m / 12, 3)
        
        switch unit {
        // MARK: - Length
        case .yoctometers:
            return (.length, pow(10, -24), "ym")
        case .zeptometers:
            return (.length, pow(10, -21), "zm")
        case .attometers:
            return (.length, pow(10, -18), "am")
        case .femtometers:
            return (.length, pow(10, -15), "fm")
        case .picometers:
            return (.length, pow(10, -12), "pm")
        case .nanometers:
            return (.length, pow(10, -9), "nm")
        case .micrometers:
            return (.length, pow(10, -6), "μm")
        case .millimeters:
            return (.length, pow(10, -3), "mm")
        case .centimeters:
            return (.length, pow(10, -2), "cm")
        case .decimeters:
            return (.length, pow(10, -1), "dm")
        case .meters:
            return (.length, pow(10, 0), "m")
        case .decameters:
            return (.length, pow(10, 1), "dam")
        case .hectometers:
            return (.length, pow(10, 2), "hm")
        case .kilometers:
            return (.length, pow(10, 3), "km")
        case .megameters:
            return (.length, pow(10, 6), "Mm")
        case .gigameters:
            return (.length, pow(10, 9), "Gm")
        case .terameters:
            return (.length, pow(10, 12), "Tm")
        case .petameters:
            return (.length, pow(10, 15), "Pm")
        case .exameters:
            return (.length, pow(10, 18), "Em")
        case .zettameters:
            return (.length, pow(10, 21), "Zm")
        case .yottameters:
            return (.length, pow(10, 24), "Ym")
            
        case .fermis:
            return (.length, pow(10, -15), "fm")
        case .ångströms:
            return (.length, pow(10, -10), "Å")
        case .microns:
            return (.length, pow(10, -6), "μm")
            
        case .thou, .mils:
            return (.length, ft👉🏻m / 12 / 1000, "thou")
        case .inches:
            return (.length, ft👉🏻m / 12, "in")
        case .feet:
            return (.length, ft👉🏻m, "ft")
        case .yards:
            return (.length, ft👉🏻m * 3, "yd")
        case .miles:
            return (.length, ft👉🏻m * 5_280, "mi")
        case .leagues:
            return (.length, ft👉🏻m * 5_280 * 3, "lg")
        case .rods:
            return (.length, ft👉🏻m * 16.5, "rd")
        case .furlongs:
            return (.length, ft👉🏻m * 16.5 * 40, "fur")
        case .links:
            return (.length, ft👉🏻m * 0.66, "li")
        case .chains:
            return (.length, ft👉🏻m * 0.66 * 100, "ch")
            
        case .fathoms:
            return (.length, ft👉🏻m * 6, "fath")
        case .nauticalMiles:
            return (.length, 1852, "nmi")
            
        //MARK: - Mass
        case .yoctograms:
            return (.mass, pow(10, -24), "yg")
        case .zeptograms:
            return (.mass, pow(10, -21), "zg")
        case .attograms:
            return (.mass, pow(10, -18), "ag")
        case .femtograms:
            return (.mass, pow(10, -15), "fg")
        case .picograms:
            return (.mass, pow(10, -12), "pg")
        case .nanograms:
            return (.mass, pow(10, -9), "ng")
        case .micrograms:
            return (.mass, pow(10, -6), "μg")
        case .milligrams:
            return (.mass, pow(10, -3), "mg")
        case .centigrams:
            return (.mass, pow(10, -2), "cg")
        case .decigrams:
            return (.mass, pow(10, -1), "dg")
        case .grams:
            return (.mass, pow(10, 0), "g")
        case .decagrams:
            return (.mass, pow(10, 1), "dag")
        case .hectograms:
            return (.mass, pow(10, 2), "hg")
        case .kilograms:
            return (.mass, pow(10, 3), "kg")
        case .megagrams:
            return (.mass, pow(10, 6), "Mg")
        case .gigagrams:
            return (.mass, pow(10, 9), "Gg")
        case .teragrams:
            return (.mass, pow(10, 12), "Tg")
        case .petagrams:
            return (.mass, pow(10, 15), "Pg")
        case .exagrams:
            return (.mass, pow(10, 18), "Eg")
        case .zettagrams:
            return (.mass, pow(10, 21), "Zg")
        case .yottagrams:
            return (.mass, pow(10, 24), "Yg")

        case .metricTons:
            return (.mass, pow(10, 6), "t")

        case .carats:
            return (.mass, 200 * pow(10, -3), "c")
        case .grains:
            return (.mass, lb👉🏻g / 7000, "gr")
        case .drams:
            return (.mass, lb👉🏻g / 256, "dr")
        case .ounces:
            return (.mass, lb👉🏻g / 16, "oz")
        case .pounds:
            return (.mass, lb👉🏻g, "lb")
        case .stone:
            return (.mass, lb👉🏻g * 14, "qr")
        case .quarters(let system):
            switch system {
            case .british:
                return (.mass, lb👉🏻g * 28, "qr")
            case .american:
                return (.mass, lb👉🏻g * 25, "qr")
            }
        case .hundredweights(let system):
            switch system {
            case .british:
                return (.mass, lb👉🏻g * 112, "cwt")
            case .american:
                return (.mass, lb👉🏻g * 100, "cwt")
            }
        case .longHundredweights:
            return (.mass, lb👉🏻g * 112, "cwt")
        case .tons(let system):
            switch system {
            case .british:
                return (.mass, lb👉🏻g * 2240, "tn")
            case .american:
                return (.mass, lb👉🏻g * 2000, "tn")
            }
        case .longTons:
            return (.mass, lb👉🏻g * 2240, "tn")
            
            
        case .pennyweights:
            return (.mass, lb👉🏻g / 7000 * 24, "dwt")
        case .ouncesTroy:
            return (.mass, lb👉🏻g / 7000 * 24 * 20, "oz t")
        case .poundsTroy:
            return (.mass, lb👉🏻g / 7000 * 24 * 20 * 12, "lb t")

        case .scruples:
            return (.mass, lb👉🏻g / 7000 * 20, "s ap")
        case .dramsApothecaries:
            return (.mass, lb👉🏻g / 7000 * 20 * 3, "dr ap")
        case .ouncesApothecaries:
            return (.mass, lb👉🏻g / 7000 * 20 * 3 * 8, "oz ap")
        case .poundsApothecaries:
            return (.mass, lb👉🏻g / 7000 * 20 * 3 * 8 * 12, "lb ap")
            
            
        //MARK: - Area
        case .squareYoctometers:
            return (.area, pow(10, -48), "ym²")
        case .squareZeptometers:
            return (.area, pow(10, -42), "zm²")
        case .squareAttometers:
            return (.area, pow(10, -36), "am²")
        case .squareFemtometers:
            return (.area, pow(10, -30), "fm²")
        case .squarePicometers:
            return (.area, pow(10, -24), "pm²")
        case .squareNanometers:
            return (.area, pow(10, -18), "nm²")
        case .squareMicrometers:
            return (.area, pow(10, -12), "μm²")
        case .squareMillimeters:
            return (.area, pow(10, -6), "mm²")
        case .squareCentimeters:
            return (.area, pow(10, -4), "cm²")
        case .squareDecimeters:
            return (.area, pow(10, -2), "dm²")
        case .squareMeters:
            return (.area, pow(10, 0), "m²")
        case .squareDecameters:
            return (.area, pow(10, 2), "dam²")
        case .squareHectometers:
            return (.area, pow(10, 4), "hm²")
        case .squareKilometers:
            return (.area, pow(10, 6), "km²")
        case .squareMegameters:
            return (.area, pow(10, 12), "Mm²")
        case .squareGigameters:
            return (.area, pow(10, 18), "Gm²")
        case .squareTerameters:
            return (.area, pow(10, 24), "Tm²")
        case .squarePetameters:
            return (.area, pow(10, 30), "Pm²")
        case .squareExameters:
            return (.area, pow(10, 36), "Em²")
        case .squareZettameters:
            return (.area, pow(10, 42), "Zm²")
        case .squareYottameters:
            return (.area, pow(10, 48), "Ym²")
            
        case .centiares:
            return (.area, pow(10, 0), "ca")
        case .deciares:
            return (.area, pow(10, 1), "da")
        case .ares:
            return (.area, pow(10, 2), "a")
        case .decares:
            return (.area, pow(10, 3), "daa")
        case .hectares:
            return (.area, pow(10, 4), "ha")
            
        case .acres:
            return (.area, pow(ft👉🏻m * 5280, 2) / 640, "ac")
            
        case .squareInches:
            return (.area, pow(ft👉🏻m / 12, 2), "in²")
        case .squareFeet:
            return (.area, pow(ft👉🏻m, 2), "ft²")
        case .squareYards:
            return (.area, pow(ft👉🏻m * 3, 2), "yd²")
        case .squareMiles:
            return (.area, pow(ft👉🏻m * 5280, 2), "mi²")
        case .squareRods:
            return (.area, pow(ft👉🏻m * 16.5, 2), "rd²")
            
        // MARK: - Volume
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
            
        case .minims(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09 / 160 / 8 / 60, "min")
            case .american:
                return (.volume, gal👉🏻m³ / 1024 / 60, "min")
            }
        case .fluidScruples(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09 / 160 / 8 / 60 * 20, "min")
            case .american:
                return (.volume, gal👉🏻m³ / 1024 / 60 * 20, "min")
            }
        case .fluidDrams(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09 / 160 / 8, "fl dr")
            case .american:
                return (.volume, gal👉🏻m³ / 1024, "fl dr")
            }
        case .fluidDrachms(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09 / 160 / 8, "fl dr")
            case .american:
                return (.volume, gal👉🏻m³ / 1024, "fl dr")
            }
        case .fluidOunces(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09 / 160, "gi")
            case .american:
                return (.volume, gal👉🏻m³ / 128, "fl oz")
            }
        case .gills(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09 / 32, "gi")
            case .american:
                return (.volume, gal👉🏻m³ / 32, "gi")
            }
        case .pints(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09 / 8, "pt")
            case .american:
                return (.volume, gal👉🏻m³ / 8, "pt")
            }
        case .quarts(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09 / 4, "qt")
            case .american:
                return (.volume, gal👉🏻m³ / 4, "qt")
            }
        case .gallons(let system):
            switch system {
            case .british:
                return (.volume, l👉🏻m³ * 4.546_09, "gal")
            case .american:
                return (.volume, gal👉🏻m³, "gal")
            }
        case .cords:
            return (.volume, 128 * pow(ft👉🏻m, 3), "cd")
        case .pecks:
            return (.volume, 2 * gal👉🏻m³, "pk")
        case .bushels:
            return (.volume, 8 * gal👉🏻m³, "bu")
            
        case .teaspoons:
            return (.volume, gal👉🏻m³ / 768, "tsp")
        case .tablespoons:
            return (.volume, gal👉🏻m³ / 256, "tbsp")
        case .cups:
            return (.volume, gal👉🏻m³ / 128 * 8, "cu")
        }
    }
}

public func ==(lhs: Unit, rhs: Unit) -> Bool {
    return lhs.symbol == rhs.symbol && lhs.factor == rhs.factor
}

public func !=(lhs: Unit, rhs: Unit) -> Bool {
    return !(lhs.symbol == rhs.symbol && lhs.factor == rhs.factor)
}

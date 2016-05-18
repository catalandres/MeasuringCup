//
//  LengthUnit.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–14.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public enum Unit {

    //Length - SI
    case yoctometers, zeptometers, attometers, femtometers, picometers, nanometers, micrometers, millimeters, centimeters, decimeters, meters, decameters, hectometers, kilometers, megameters, gigameters, terameters, petameters, exameters, zettameters, yottameters
    case fermis, ångströms, microns
    case inches, feet, yards, miles, leagues, rods, furlongs, links, chains
    case fathoms, nauticalMiles
    
    //Mass
    case yoctograms, zeptograms, attograms, femtograms, picograms, nanograms, micrograms, milligrams, centigrams, decigrams, grams, decagrams, hectograms, kilograms, megagrams, gigagrams, teragrams, petagrams, exagrams, zettagrams, yottagrams
    case metricTons
    case carats, grains, drams, ounces, pounds, quartersUS, quartersUK, hundredweightsUS, hundredweightsUK, longHundredweights, tonsUS, tonsUK, longTons, stones
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
    case minims, fluidScruples, teaspoons, tablespoons, cups, fluidOunces, fluidDrams, gills, pints, quarts, gallons, cords, pecks, bushels
    
    public var type: UnitType {
        return Unit.values(self).type
    }
    public var convertible: Bool {
        return self.factor != nil
    }
    public var factor: Decimal? {
        return Unit.values(self).factor
    }
    public var symbol: String {
        return Unit.values(self).symbol
    }
    
    static private func values(unit: Unit) -> (type: UnitType, factor: Decimal?, symbol: String) {
        // MARK: - Constants
        let ft👉🏻m = Decimal(0.3048)
        let lb👉🏻g = Decimal(453.59237)
        let l👉🏻m³ = Decimal(tenTo: -3)
        let gal👉🏻m³: Decimal = 231 * ((ft👉🏻m / 12) ^ 3)
        
        switch unit {
        // MARK: - Length
        case .yoctometers:
            return (.length, Decimal(tenTo: -24), "ym")
        case .zeptometers:
            return (.length, Decimal(tenTo: -21), "zm")
        case .attometers:
            return (.length, Decimal(tenTo: -18), "am")
        case .femtometers:
            return (.length, Decimal(tenTo: -15), "fm")
        case .picometers:
            return (.length, Decimal(tenTo: -12), "pm")
        case .nanometers:
            return (.length, Decimal(tenTo: -9), "nm")
        case .micrometers:
            return (.length, Decimal(tenTo: -6), "μm")
        case .millimeters:
            return (.length, Decimal(tenTo: -3), "mm")
        case .centimeters:
            return (.length, Decimal(tenTo: -2), "cm")
        case .decimeters:
            return (.length, Decimal(tenTo: -1), "dm")
        case .meters:
            return (.length, Decimal(tenTo: 0), "m")
        case .decameters:
            return (.length, Decimal(tenTo: 1), "dam")
        case .hectometers:
            return (.length, Decimal(tenTo: 2), "hm")
        case .kilometers:
            return (.length, Decimal(tenTo: 3), "km")
        case .megameters:
            return (.length, Decimal(tenTo: 6), "Mm")
        case .gigameters:
            return (.length, Decimal(tenTo: 9), "Gm")
        case .terameters:
            return (.length, Decimal(tenTo: 12), "Tm")
        case .petameters:
            return (.length, Decimal(tenTo: 15), "Pm")
        case .exameters:
            return (.length, Decimal(tenTo: 18), "Em")
        case .zettameters:
            return (.length, Decimal(tenTo: 21), "Zm")
        case .yottameters:
            return (.length, Decimal(tenTo: 24), "Ym")
            
        case .fermis:
            return (.length, Decimal(tenTo: -15), "fm")
        case .ångströms:
            return (.length, Decimal(tenTo: -10), "Å")
        case .microns:
            return (.length, Decimal(tenTo: -6), "μm")
            
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
            return (.length, Decimal(1852), "nmi")
            
        //MARK: - Mass
        case .yoctograms:
            return (.mass, Decimal(tenTo: -24), "yg")
        case .zeptograms:
            return (.mass, Decimal(tenTo: -21), "zg")
        case .attograms:
            return (.mass, Decimal(tenTo: -18), "ag")
        case .femtograms:
            return (.mass, Decimal(tenTo: -15), "fg")
        case .picograms:
            return (.mass, Decimal(tenTo: -12), "pg")
        case .nanograms:
            return (.mass, Decimal(tenTo: -9), "ng")
        case .micrograms:
            return (.mass, Decimal(tenTo: -6), "μg")
        case .milligrams:
            return (.mass, Decimal(tenTo: -3), "mg")
        case .centigrams:
            return (.mass, Decimal(tenTo: -2), "cg")
        case .decigrams:
            return (.mass, Decimal(tenTo: -1), "dg")
        case .grams:
            return (.mass, Decimal(tenTo: 0), "g")
        case .decagrams:
            return (.mass, Decimal(tenTo: 1), "dag")
        case .hectograms:
            return (.mass, Decimal(tenTo: 2), "hg")
        case .kilograms:
            return (.mass, Decimal(tenTo: 3), "kg")
        case .megagrams:
            return (.mass, Decimal(tenTo: 6), "Mg")
        case .gigagrams:
            return (.mass, Decimal(tenTo: 9), "Gg")
        case .teragrams:
            return (.mass, Decimal(tenTo: 12), "Tg")
        case .petagrams:
            return (.mass, Decimal(tenTo: 15), "Pg")
        case .exagrams:
            return (.mass, Decimal(tenTo: 18), "Eg")
        case .zettagrams:
            return (.mass, Decimal(tenTo: 21), "Zg")
        case .yottagrams:
            return (.mass, Decimal(tenTo: 24), "Yg")

        case .metricTons:
            return (.mass, Decimal(tenTo: 6), "t")

        case .carats:
            return (.mass, 200 * Decimal(tenTo: -3), "c")
        case .grains:
            return (.mass, lb👉🏻g / 7000, "gr")
        case .drams:
            return (.mass, lb👉🏻g / 256, "dr")
        case .ounces:
            return (.mass, lb👉🏻g / 16, "oz")
        case .pounds:
            return (.mass, lb👉🏻g, "lb")
        case .stones:
            return (.mass, lb👉🏻g * 14, "qr")
        case .quartersUS:
            return (.mass, lb👉🏻g * 25, "qr")
        case .quartersUK:
            return (.mass, lb👉🏻g * 28, "qr")
        case .hundredweightsUS:
            return (.mass, lb👉🏻g * 100, "cwt")
        case .longHundredweights, .hundredweightsUK:
            return (.mass, lb👉🏻g * 112, "cwt")
        case .tonsUS:
            return (.mass, lb👉🏻g * 2000, "tn")
        case .longTons, .tonsUK:
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
            return (.area, Decimal(tenTo: -48), "ym²")
        case .squareZeptometers:
            return (.area, Decimal(tenTo: -42), "zm²")
        case .squareAttometers:
            return (.area, Decimal(tenTo: -36), "am²")
        case .squareFemtometers:
            return (.area, Decimal(tenTo: -30), "fm²")
        case .squarePicometers:
            return (.area, Decimal(tenTo: -24), "pm²")
        case .squareNanometers:
            return (.area, Decimal(tenTo: -18), "nm²")
        case .squareMicrometers:
            return (.area, Decimal(tenTo: -12), "μm²")
        case .squareMillimeters:
            return (.area, Decimal(tenTo: -6), "mm²")
        case .squareCentimeters:
            return (.area, Decimal(tenTo: -4), "cm²")
        case .squareDecimeters:
            return (.area, Decimal(tenTo: -2), "dm²")
        case .squareMeters:
            return (.area, Decimal(tenTo: 0), "m²")
        case .squareDecameters:
            return (.area, Decimal(tenTo: 2), "dam²")
        case .squareHectometers:
            return (.area, Decimal(tenTo: 4), "hm²")
        case .squareKilometers:
            return (.area, Decimal(tenTo: 6), "km²")
        case .squareMegameters:
            return (.area, Decimal(tenTo: 12), "Mm²")
        case .squareGigameters:
            return (.area, Decimal(tenTo: 18), "Gm²")
        case .squareTerameters:
            return (.area, Decimal(tenTo: 24), "Tm²")
        case .squarePetameters:
            return (.area, Decimal(tenTo: 30), "Pm²")
        case .squareExameters:
            return (.area, Decimal(tenTo: 36), "Em²")
        case .squareZettameters:
            return (.area, Decimal(tenTo: 42), "Zm²")
        case .squareYottameters:
            return (.area, Decimal(tenTo: 48), "Ym²")
            
        case .centiares:
            return (.area, Decimal(tenTo: 0), "ca")
        case .deciares:
            return (.area, Decimal(tenTo: 1), "da")
        case .ares:
            return (.area, Decimal(tenTo: 2), "a")
        case .decares:
            return (.area, Decimal(tenTo: 3), "daa")
        case .hectares:
            return (.area, Decimal(tenTo: 4), "ha")
            
        case .acres:
            return (.area, ((ft👉🏻m * 5280) ^ 2) / 640, "ac")
            
        case .squareInches:
            return (.area, (ft👉🏻m / 12) ^ 2, "in²")
        case .squareFeet:
            return (.area, ft👉🏻m ^ 2, "ft²")
        case .squareYards:
            return (.area, (ft👉🏻m * 3) ^ 2, "yd²")
        case .squareMiles:
            return (.area, (ft👉🏻m * 5280) ^ 2, "mi²")
        case .squareRods:
            return (.area, (ft👉🏻m * 16.5) ^ 2, "rd²")
            
        // MARK: - Volume
        case .cubicYoctometers:
            return (.volume, Decimal(tenTo: -72), "ym³")
        case .cubicZeptometers:
            return (.volume, Decimal(tenTo: -63), "zm³")
        case .cubicAttometers:
            return (.volume, Decimal(tenTo: -54), "am³")
        case .cubicFemtometers:
            return (.volume, Decimal(tenTo: -45), "fm³")
        case .cubicPicometers:
            return (.volume, Decimal(tenTo: -36), "pm³")
        case .cubicNanometers:
            return (.volume, Decimal(tenTo: -27), "nm³")
        case .cubicMicrometers:
            return (.volume, Decimal(tenTo: -18), "μm³")
        case .cubicMillimeters:
            return (.volume, Decimal(tenTo: -9), "mm³")
        case .cubicCentimeters:
            return (.volume, Decimal(tenTo: -6), "cm³")
        case .cubicDecimeters:
            return (.volume, Decimal(tenTo: -3), "dm³")
        case .cubicMeters:
            return (.volume, Decimal(tenTo: 0), "m³")
        case .cubicDecameters:
            return (.volume, Decimal(tenTo: 3), "dam³")
        case .cubicHectometers:
            return (.volume, Decimal(tenTo: 6), "hm³")
        case .cubicKilometers:
            return (.volume, Decimal(tenTo: 9), "km³")
        case .cubicMegameters:
            return (.volume, Decimal(tenTo: 18), "Mm³")
        case .cubicGigameters:
            return (.volume, Decimal(tenTo: 27), "Gm³")
        case .cubicTerameters:
            return (.volume, Decimal(tenTo: 36), "Tm³")
        case .cubicPetameters:
            return (.volume, Decimal(tenTo: 45), "Pm³")
        case .cubicExameters:
            return (.volume, Decimal(tenTo: 54), "Em³")
        case .cubicZettameters:
            return (.volume, Decimal(tenTo: 63), "Zm³")
        case .cubicYottameters:
            return (.volume, Decimal(tenTo: 72), "Ym³")
            
        case .yoctoliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -24), "yl")
        case .zeptoliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -21), "zl")
        case .attoliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -18), "al")
        case .femtoliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -15), "fl")
        case .picoliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -12), "pl")
        case .nanoliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -9), "nl")
        case .microliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -6), "μl")
        case .milliliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -3), "ml")
        case .centiliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -2), "cl")
        case .deciliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: -1), "dl")
        case .liters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 0), "l")
        case .decaliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 1), "dal")
        case .hectoliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 2), "hl")
        case .kiloliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 3), "kl")
        case .megaliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 6), "Ml")
        case .gigaliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 9), "Gl")
        case .teraliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 12), "Tl")
        case .petaliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 15), "Pl")
        case .exaliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 18), "El")
        case .zettaliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 21), "Zl")
        case .yottaliters:
            return (.volume, l👉🏻m³ * Decimal(tenTo: 24), "Yl")
    
        case .cubicInches:
            return (.volume, (ft👉🏻m / 12) ^ 3, "in³")
        case .cubicFeet:
            return (.volume, ft👉🏻m ^ 3, "ft³")
        case .cubicYards:
            return (.volume, (ft👉🏻m * 3) ^ 3, "yd³")
        case .cubicMiles:
            return (.volume, (ft👉🏻m * 5280) ^ 3, "mi³")
            
        case .minims:
            return (.volume, gal👉🏻m³ / 1024 / 60, "min")
        case .fluidScruples:
            return (.volume, gal👉🏻m³ / 1024 / 60 * 20, "min")
        case .fluidDrams:
            return (.volume, gal👉🏻m³ / 1024, "fl dr")
        case .fluidOunces:
            return (.volume, gal👉🏻m³ / 128, "fl oz")
        case .gills:
            return (.volume, gal👉🏻m³ / 32, "gi")
        case .pints:
            return (.volume, gal👉🏻m³ / 8, "pt")
        case .quarts:
            return (.volume, gal👉🏻m³ / 4, "qt")
        case .gallons:
            return (.volume, gal👉🏻m³, "gal")
        case .cords:
            return (.volume, 128 * (ft👉🏻m ^ 3), "cd")
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
    return lhs.symbol == rhs.symbol
}

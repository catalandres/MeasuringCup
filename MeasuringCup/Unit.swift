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
    case thou, mils, inches, feet, yards, miles, leagues
    case surveyLinks, surveyFeet, surveyRods, surveyChains, surveyMiles, surveyFurlongs
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
    case squareSurveyFeet, squareSurveyRods, squareSurveyChains, squareSurveyMiles
    case acres
    case squareInches, squareFeet, squareYards, squareMiles, squareRods
    
    //Volume
    case cubicYoctometers, cubicZeptometers, cubicAttometers, cubicFemtometers, cubicPicometers, cubicNanometers, cubicMicrometers, cubicMillimeters, cubicCentimeters, cubicDecimeters, cubicMeters, cubicDecameters, cubicHectometers, cubicKilometers, cubicMegameters, cubicGigameters, cubicTerameters, cubicPetameters, cubicExameters, cubicZettameters, cubicYottameters
    case yoctoliters, zeptoliters, attoliters, femtoliters, picoliters, nanoliters, microliters, milliliters, centiliters, deciliters, liters, decaliters, hectoliters, kiloliters, megaliters, gigaliters, teraliters, petaliters, exaliters, zettaliters, yottaliters
    case cubicInches, cubicFeet, cubicYards, cubicMiles
    case minims(MeasureSystem), fluidScruples(MeasureSystem), teaspoons, tablespoons, cups, fluidOunces(MeasureSystem), fluidDrams(MeasureSystem), fluidDrachms(MeasureSystem), gills(MeasureSystem), pints(MeasureSystem), quarts(MeasureSystem), gallons(MeasureSystem), cords, pecks(MeasureSystem), bushels(MeasureSystem)
    case dryQuarts, dryPints
    
    // Temperature
    case celsius, kelvin, fahrenheit
    
    // Information
    case bytes, kilobytes, megabytes, gigabytes, terabytes, petabytes, exabytes, zettabytes, yottabytes
    case bits, kilobits, megabits, gigabits, terabits, petabits, exabits, zettabits, yottabits
    case kibibytes, mebibytes, gibibytes, tebibytes, pebibytes, exbibytes, zebibytes, yobibytes
    case kibibits, mebibits, gibibits, tebibits, pebibits, exbibits, zebibits, yobibits
    
    // Time
    case nanoseconds, microseconds, milliseconds, seconds, minutes, hours, days, weeks
    
    public var type: UnitType {
        return Unit.values(self).type
    }
    public var convertible: Bool {
        return self.factor != nil
    }
    public var shift: Double? {
        return Unit.values(self).shift
    }
    public var factor: Double? {
        return Unit.values(self).factor
    }
    public var symbol: String {
        return Unit.values(self).symbol
    }
    
    static private func values(unit: Unit) -> (type: UnitType, shift: Double?, factor: Double?, symbol: String) {
        // MARK: - Constants
        let ft👉🏻m: Double = 0.3048
        let lb👉🏻g: Double = 453.59237
        let l👉🏻m³: Double = pow(10, -3)
        let gal👉🏻m³: Double = 231 * pow(ft👉🏻m / 12, 3)
        
        switch unit {
        // MARK: - Length
        case .yoctometers:
            return (.length, 0, pow(10, -24), "ym")
        case .zeptometers:
            return (.length, 0, pow(10, -21), "zm")
        case .attometers:
            return (.length, 0, pow(10, -18), "am")
        case .femtometers:
            return (.length, 0, pow(10, -15), "fm")
        case .picometers:
            return (.length, 0, pow(10, -12), "pm")
        case .nanometers:
            return (.length, 0, pow(10, -9), "nm")
        case .micrometers:
            return (.length, 0, pow(10, -6), "μm")
        case .millimeters:
            return (.length, 0, pow(10, -3), "mm")
        case .centimeters:
            return (.length, 0, pow(10, -2), "cm")
        case .decimeters:
            return (.length, 0, pow(10, -1), "dm")
        case .meters:
            return (.length, 0, pow(10, 0), "m")
        case .decameters:
            return (.length, 0, pow(10, 1), "dam")
        case .hectometers:
            return (.length, 0, pow(10, 2), "hm")
        case .kilometers:
            return (.length, 0, pow(10, 3), "km")
        case .megameters:
            return (.length, 0, pow(10, 6), "Mm")
        case .gigameters:
            return (.length, 0, pow(10, 9), "Gm")
        case .terameters:
            return (.length, 0, pow(10, 12), "Tm")
        case .petameters:
            return (.length, 0, pow(10, 15), "Pm")
        case .exameters:
            return (.length, 0, pow(10, 18), "Em")
        case .zettameters:
            return (.length, 0, pow(10, 21), "Zm")
        case .yottameters:
            return (.length, 0, pow(10, 24), "Ym")
            
        case .fermis:
            return (.length, 0, pow(10, -15), "fm")
        case .ångströms:
            return (.length, 0, pow(10, -10), "Å")
        case .microns:
            return (.length, 0, pow(10, -6), "μm")
            
        case .thou, .mils:
            return (.length, 0, ft👉🏻m / 12 / 1000, "thou")
        case .inches:
            return (.length, 0, ft👉🏻m / 12, "in")
        case .feet:
            return (.length, 0, ft👉🏻m, "ft")
        case .yards:
            return (.length, 0, ft👉🏻m * 3, "yd")
        case .miles:
            return (.length, 0, ft👉🏻m * 5_280, "mi")
        case .leagues:
            return (.length, 0, ft👉🏻m * 5_280 * 3, "lg")
    
        case .surveyLinks:
            return (.length, 0, ft👉🏻m * 5_280 / 0.999_998 / 8_000, "li")
        case .surveyFeet:
            return (.length, 0, ft👉🏻m / 0.999_998, "ft")
        case .surveyRods:
            return (.length, 0, ft👉🏻m * 5_280 / 0.999_998 / 320, "rd")
        case .surveyChains:
            return (.length, 0, ft👉🏻m * 5_280 / 0.999_998 / 80, "ch")
        case .surveyFurlongs:
            return (.length, 0, ft👉🏻m / 0.999_998 * 660, "fur")
        case .surveyMiles:
            return (.length, 0, ft👉🏻m * 5_280 / 0.999_998, "mi")
            
        case .fathoms:
            return (.length, 0, ft👉🏻m * 6, "fath")
        case .nauticalMiles:
            return (.length, 0, 1852, "nmi")
            
        //MARK: - Mass
        case .yoctograms:
            return (.mass, 0, pow(10, -24), "yg")
        case .zeptograms:
            return (.mass, 0, pow(10, -21), "zg")
        case .attograms:
            return (.mass, 0, pow(10, -18), "ag")
        case .femtograms:
            return (.mass, 0, pow(10, -15), "fg")
        case .picograms:
            return (.mass, 0, pow(10, -12), "pg")
        case .nanograms:
            return (.mass, 0, pow(10, -9), "ng")
        case .micrograms:
            return (.mass, 0, pow(10, -6), "μg")
        case .milligrams:
            return (.mass, 0, pow(10, -3), "mg")
        case .centigrams:
            return (.mass, 0, pow(10, -2), "cg")
        case .decigrams:
            return (.mass, 0, pow(10, -1), "dg")
        case .grams:
            return (.mass, 0, pow(10, 0), "g")
        case .decagrams:
            return (.mass, 0, pow(10, 1), "dag")
        case .hectograms:
            return (.mass, 0, pow(10, 2), "hg")
        case .kilograms:
            return (.mass, 0, pow(10, 3), "kg")
        case .megagrams:
            return (.mass, 0, pow(10, 6), "Mg")
        case .gigagrams:
            return (.mass, 0, pow(10, 9), "Gg")
        case .teragrams:
            return (.mass, 0, pow(10, 12), "Tg")
        case .petagrams:
            return (.mass, 0, pow(10, 15), "Pg")
        case .exagrams:
            return (.mass, 0, pow(10, 18), "Eg")
        case .zettagrams:
            return (.mass, 0, pow(10, 21), "Zg")
        case .yottagrams:
            return (.mass, 0, pow(10, 24), "Yg")

        case .metricTons:
            return (.mass, 0, pow(10, 6), "t")

        case .carats:
            return (.mass, 0, 200 * pow(10, -3), "c")
        case .grains:
            return (.mass, 0, lb👉🏻g / 7000, "gr")
        case .drams:
            return (.mass, 0, lb👉🏻g / 256, "dr")
        case .ounces:
            return (.mass, 0, lb👉🏻g / 16, "oz")
        case .pounds:
            return (.mass, 0, lb👉🏻g, "lb")
        case .stone:
            return (.mass, 0, lb👉🏻g * 14, "qr")
        case .quarters(let system):
            switch system {
            case .british:
                return (.mass, 0, lb👉🏻g * 28, "qr")
            case .american:
                return (.mass, 0, lb👉🏻g * 25, "qr")
            }
        case .hundredweights(let system):
            switch system {
            case .british:
                return (.mass, 0, lb👉🏻g * 112, "cwt")
            case .american:
                return (.mass, 0, lb👉🏻g * 100, "cwt")
            }
        case .longHundredweights:
            return (.mass, 0, lb👉🏻g * 112, "cwt")
        case .tons(let system):
            switch system {
            case .british:
                return (.mass, 0, lb👉🏻g * 2240, "tn")
            case .american:
                return (.mass, 0, lb👉🏻g * 2000, "tn")
            }
        case .longTons:
            return (.mass, 0, lb👉🏻g * 2240, "tn")
            
            
        case .pennyweights:
            return (.mass, 0, lb👉🏻g / 7000 * 24, "dwt")
        case .ouncesTroy:
            return (.mass, 0, lb👉🏻g / 7000 * 24 * 20, "oz t")
        case .poundsTroy:
            return (.mass, 0, lb👉🏻g / 7000 * 24 * 20 * 12, "lb t")

        case .scruples:
            return (.mass, 0, lb👉🏻g / 7000 * 20, "s ap")
        case .dramsApothecaries:
            return (.mass, 0, lb👉🏻g / 7000 * 20 * 3, "dr ap")
        case .ouncesApothecaries:
            return (.mass, 0, lb👉🏻g / 7000 * 20 * 3 * 8, "oz ap")
        case .poundsApothecaries:
            return (.mass, 0, lb👉🏻g / 7000 * 20 * 3 * 8 * 12, "lb ap")
            
            
        //MARK: - Area
        case .squareYoctometers:
            return (.area, 0, pow(10, -48), "ym²")
        case .squareZeptometers:
            return (.area, 0, pow(10, -42), "zm²")
        case .squareAttometers:
            return (.area, 0, pow(10, -36), "am²")
        case .squareFemtometers:
            return (.area, 0, pow(10, -30), "fm²")
        case .squarePicometers:
            return (.area, 0, pow(10, -24), "pm²")
        case .squareNanometers:
            return (.area, 0, pow(10, -18), "nm²")
        case .squareMicrometers:
            return (.area, 0, pow(10, -12), "μm²")
        case .squareMillimeters:
            return (.area, 0, pow(10, -6), "mm²")
        case .squareCentimeters:
            return (.area, 0, pow(10, -4), "cm²")
        case .squareDecimeters:
            return (.area, 0, pow(10, -2), "dm²")
        case .squareMeters:
            return (.area, 0, pow(10, 0), "m²")
        case .squareDecameters:
            return (.area, 0, pow(10, 2), "dam²")
        case .squareHectometers:
            return (.area, 0, pow(10, 4), "hm²")
        case .squareKilometers:
            return (.area, 0, pow(10, 6), "km²")
        case .squareMegameters:
            return (.area, 0, pow(10, 12), "Mm²")
        case .squareGigameters:
            return (.area, 0, pow(10, 18), "Gm²")
        case .squareTerameters:
            return (.area, 0, pow(10, 24), "Tm²")
        case .squarePetameters:
            return (.area, 0, pow(10, 30), "Pm²")
        case .squareExameters:
            return (.area, 0, pow(10, 36), "Em²")
        case .squareZettameters:
            return (.area, 0, pow(10, 42), "Zm²")
        case .squareYottameters:
            return (.area, 0, pow(10, 48), "Ym²")
            
        case .centiares:
            return (.area, 0, pow(10, 0), "ca")
        case .deciares:
            return (.area, 0, pow(10, 1), "da")
        case .ares:
            return (.area, 0, pow(10, 2), "a")
        case .decares:
            return (.area, 0, pow(10, 3), "daa")
        case .hectares:
            return (.area, 0, pow(10, 4), "ha")
            
        case .acres:
            return (.area, 0, pow(ft👉🏻m / 0.999_998 * 5280, 2) / 640, "ac")
            
        case .squareInches:
            return (.area, 0, pow(ft👉🏻m / 12, 2), "in²")
        case .squareFeet:
            return (.area, 0, pow(ft👉🏻m, 2), "ft²")
        case .squareYards:
            return (.area, 0, pow(ft👉🏻m * 3, 2), "yd²")
        case .squareMiles:
            return (.area, 0, pow(ft👉🏻m * 5280, 2), "mi²")
        case .squareRods:
            return (.area, 0, pow(ft👉🏻m * 16.5, 2), "rd²")
            
        case .squareSurveyFeet:
            return (.area, 0, pow(ft👉🏻m / 0.999_998, 2), "ft²")
        case .squareSurveyRods:
            return (.area, 0, pow(ft👉🏻m / 0.999_998 * 16.5, 2), "rd²")
        case .squareSurveyChains:
            return (.area, 0, pow(ft👉🏻m * 5_280 / 0.999_998 / 80, 2), "ch²")
        case .squareSurveyMiles:
            return (.area, 0, pow(ft👉🏻m / 0.999_998 * 5280, 2), "mi²")
            
        // MARK: - Volume
        case .cubicYoctometers:
            return (.volume, 0, pow(10, -72), "ym³")
        case .cubicZeptometers:
            return (.volume, 0, pow(10, -63), "zm³")
        case .cubicAttometers:
            return (.volume, 0, pow(10, -54), "am³")
        case .cubicFemtometers:
            return (.volume, 0, pow(10, -45), "fm³")
        case .cubicPicometers:
            return (.volume, 0, pow(10, -36), "pm³")
        case .cubicNanometers:
            return (.volume, 0, pow(10, -27), "nm³")
        case .cubicMicrometers:
            return (.volume, 0, pow(10, -18), "μm³")
        case .cubicMillimeters:
            return (.volume, 0, pow(10, -9), "mm³")
        case .cubicCentimeters:
            return (.volume, 0, pow(10, -6), "cm³")
        case .cubicDecimeters:
            return (.volume, 0, pow(10, -3), "dm³")
        case .cubicMeters:
            return (.volume, 0, pow(10, 0), "m³")
        case .cubicDecameters:
            return (.volume, 0, pow(10, 3), "dam³")
        case .cubicHectometers:
            return (.volume, 0, pow(10, 6), "hm³")
        case .cubicKilometers:
            return (.volume, 0, pow(10, 9), "km³")
        case .cubicMegameters:
            return (.volume, 0, pow(10, 18), "Mm³")
        case .cubicGigameters:
            return (.volume, 0, pow(10, 27), "Gm³")
        case .cubicTerameters:
            return (.volume, 0, pow(10, 36), "Tm³")
        case .cubicPetameters:
            return (.volume, 0, pow(10, 45), "Pm³")
        case .cubicExameters:
            return (.volume, 0, pow(10, 54), "Em³")
        case .cubicZettameters:
            return (.volume, 0, pow(10, 63), "Zm³")
        case .cubicYottameters:
            return (.volume, 0, pow(10, 72), "Ym³")
            
        case .yoctoliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -24), "yl")
        case .zeptoliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -21), "zl")
        case .attoliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -18), "al")
        case .femtoliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -15), "fl")
        case .picoliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -12), "pl")
        case .nanoliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -9), "nl")
        case .microliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -6), "μl")
        case .milliliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -3), "ml")
        case .centiliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -2), "cl")
        case .deciliters:
            return (.volume, 0, l👉🏻m³ * pow(10, -1), "dl")
        case .liters:
            return (.volume, 0, l👉🏻m³ * pow(10, 0), "l")
        case .decaliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 1), "dal")
        case .hectoliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 2), "hl")
        case .kiloliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 3), "kl")
        case .megaliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 6), "Ml")
        case .gigaliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 9), "Gl")
        case .teraliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 12), "Tl")
        case .petaliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 15), "Pl")
        case .exaliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 18), "El")
        case .zettaliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 21), "Zl")
        case .yottaliters:
            return (.volume, 0, l👉🏻m³ * pow(10, 24), "Yl")
    
        case .cubicInches:
            return (.volume, 0, pow(ft👉🏻m / 12, 3), "in³")
        case .cubicFeet:
            return (.volume, 0, pow(ft👉🏻m, 3), "ft³")
        case .cubicYards:
            return (.volume, 0, pow(ft👉🏻m * 3, 3), "yd³")
        case .cubicMiles:
            return (.volume, 0, pow(ft👉🏻m * 5280, 3), "mi³")
            
        // MARK: Liquid volume
        case .minims(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09 / 160 / 8 / 60, "min")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³ / 1024 / 60, "min")
            }
        case .fluidScruples(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09 / 160 / 8 / 60 * 20, "min")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³ / 1024 / 60 * 20, "min")
            }
        case .fluidDrams(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09 / 160 / 8, "fl dr")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³ / 1024, "fl dr")
            }
        case .fluidDrachms(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09 / 160 / 8, "fl dr")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³ / 1024, "fl dr")
            }
        case .fluidOunces(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09 / 160, "gi")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³ / 128, "fl oz")
            }
        case .gills(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09 / 32, "gi")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³ / 32, "gi")
            }
        case .pints(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09 / 8, "pt")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³ / 8, "pt")
            }
        case .quarts(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09 / 4, "qt")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³ / 4, "qt")
            }
        case .gallons(let system):
            switch system {
            case .british:
                return (.volume, 0, l👉🏻m³ * 4.546_09, "gal")
            case .american:
                return (.liquidVolume, 0, gal👉🏻m³, "gal")
            }
            
        // MARK: Dry volume
        case .cords:
            return (.dryVolume, 0, 128 * pow(ft👉🏻m, 3), "cd")
        case .pecks(let system):
            switch system {
            case .british:
                return (.volume, 0, 2 * l👉🏻m³ * 4.546_09, "pk")
            case .american:
                return (.dryVolume, 0, 35.239_070_166_88 * l👉🏻m³ / 4, "pk")
            }
        case .bushels(let system):
            switch system {
            case .british:
                return (.volume, 0, 8 * l👉🏻m³ * 4.546_09, "bu")
            case .american:
                return (.dryVolume, 0, 35.239_070_166_88 * l👉🏻m³, "bu")
            }
        case .dryPints:
            return (.dryVolume, 0, 35.239_070_166_88 * l👉🏻m³ / 64, "pt")
        case .dryQuarts:
            return (.dryVolume, 0, 35.239_070_166_88 * l👉🏻m³ / 32, "pt")
        // MARK: Kitchen volume
        case .teaspoons:
            return (.volume, 0, gal👉🏻m³ / 768, "tsp")
        case .tablespoons:
            return (.volume, 0, gal👉🏻m³ / 256, "tbsp")
        case .cups:
            return (.volume, 0, gal👉🏻m³ / 128 * 8, "cu")
        case .celsius:
            return (.temperature, 0, 1, "°C")
        case .kelvin:
            return (.temperature, -273.15, 1, "K")
        case .fahrenheit:
            return (.temperature, -32, 5.0 / 9, "K")
        case .bytes:
            return (.information, 0, pow(10, 0), "B")
        case .kilobytes:
            return (.information, 0, pow(10, 3), "kB")
        case .megabytes:
            return (.information, 0, pow(10, 6), "MB")
        case .gigabytes:
            return (.information, 0, pow(10, 9), "GB")
        case .terabytes:
            return (.information, 0, pow(10, 12), "TB")
        case .petabytes:
            return (.information, 0, pow(10, 15), "PB")
        case .exabytes:
            return (.information, 0, pow(10, 18), "EB")
        case .zettabytes:
            return (.information, 0, pow(10, 21), "ZB")
        case .yottabytes:
            return (.information, 0, pow(10, 24), "YB")
        case .bits:
            return (.information, 0, pow(10, 0) / 8, "b")
        case .kilobits:
            return (.information, 0, pow(10, 3) / 8, "kb")
        case .megabits:
            return (.information, 0, pow(10, 6) / 8, "Mb")
        case .gigabits:
            return (.information, 0, pow(10, 9) / 8, "Gb")
        case .terabits:
            return (.information, 0, pow(10, 12) / 8, "Tb")
        case .petabits:
            return (.information, 0, pow(10, 15) / 8, "Pb")
        case .exabits:
            return (.information, 0, pow(10, 18) / 8, "Eb")
        case .zettabits:
            return (.information, 0, pow(10, 21) / 8, "Zb")
        case .yottabits:
            return (.information, 0, pow(10, 24) / 8, "Yb")
        case .kibibytes:
            return (.information, 0, pow(2, 10), "kiB")
        case .mebibytes:
            return (.information, 0, pow(2, 20), "MiB")
        case .gibibytes:
            return (.information, 0, pow(2, 30), "GiB")
        case .tebibytes:
            return (.information, 0, pow(2, 40), "TiB")
        case .pebibytes:
            return (.information, 0, pow(2, 50), "PiB")
        case .exbibytes:
            return (.information, 0, pow(2, 60), "EiB")
        case .zebibytes:
            return (.information, 0, pow(2, 70), "ZiB")
        case .yobibytes:
            return (.information, 0, pow(2, 80), "YiB")
        case .kibibits:
            return (.information, 0, pow(2, 10) / 8, "kib")
        case .mebibits:
            return (.information, 0, pow(2, 20) / 8, "Mib")
        case .gibibits:
            return (.information, 0, pow(2, 30) / 8, "Gib")
        case .tebibits:
            return (.information, 0, pow(2, 40) / 8, "Tib")
        case .pebibits:
            return (.information, 0, pow(2, 50) / 8, "Pib")
        case .exbibits:
            return (.information, 0, pow(2, 60) / 8, "Eib")
        case .zebibits:
            return (.information, 0, pow(2, 70) / 8, "Zib")
        case .yobibits:
            return (.information, 0, pow(2, 80) / 8, "Yib")
        case .nanoseconds:
            return (.time, 0, pow(10, -9), "ns")
        case .microseconds:
            return (.time, 0, pow(10, -6), "μs")
        case .milliseconds:
            return (.time, 0, pow(10, -3), "ms")
        case .seconds:
            return (.time, 0, pow(10, 0), "s")
        case .minutes:
            return (.time, 0, 60, "min")
        case .hours:
            return (.time, 0, 60 * 60, "h")
        case .days:
            return (.time, 0, 60 * 60 * 24, "d")
        case .weeks:
            return (.time, 0, 60 * 60 * 24 * 7, "wk")
        }
    }
}

public func ==(lhs: Unit, rhs: Unit) -> Bool {
    return lhs.symbol == rhs.symbol && lhs.factor == rhs.factor
}

public func !=(lhs: Unit, rhs: Unit) -> Bool {
    return !(lhs.symbol == rhs.symbol && lhs.factor == rhs.factor)
}

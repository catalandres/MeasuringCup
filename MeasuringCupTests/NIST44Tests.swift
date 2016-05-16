//
//  NIST44Tests.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–16.
//  Copyright © 2016 Ayre. All rights reserved.
//

import XCTest
@testable import MeasuringCup

/// The National Institute of Standard and Technology (NIST) publishes a handbook of [Specifications, Tolerances, and Other Technical Requirements for Weighing and Measuring Devices](http://www.nist.gov/pml/wmd/pubs/hb44-14.cfm), called Handbook 44. In the [Appendix C](http://www.nist.gov/pml/wmd/pubs/upload/appc-14-hb44-final.pdf) it includes the General Tables of Unites of Measurement, with conversion values between many of the units that `MeasuringCup` represents. It is taken here as substance for unit tests to verify the relationships between units.

class NIST44Tests: XCTestCase {

    // Page C-3, Units of Length
    func test_C3_length() {
        XCTAssertEqual(Measure(quantity: 10, unit: .millimeters), Measure(quantity: 1, unit: .centimeters))
        XCTAssertEqual(Measure(quantity: 10, unit: .centimeters), Measure(quantity: 1, unit: .decimeters))
        XCTAssertEqual(Measure(quantity: 10, unit: .centimeters), Measure(quantity: 100, unit: .millimeters))
        XCTAssertEqual(Measure(quantity: 10, unit: .decimeters), Measure(quantity: 1, unit: .meters))
        XCTAssertEqual(Measure(quantity: 10, unit: .decimeters), Measure(quantity: 1000, unit: .millimeters))
        XCTAssertEqual(Measure(quantity: 10, unit: .meters), Measure(quantity: 1, unit: .decameters))
        XCTAssertEqual(Measure(quantity: 10, unit: .decameters), Measure(quantity: 1, unit: .hectometers))
        XCTAssertEqual(Measure(quantity: 10, unit: .decameters), Measure(quantity: 100, unit: .meters))
        XCTAssertEqual(Measure(quantity: 10, unit: .hectometers), Measure(quantity: 1, unit: .kilometers))
        XCTAssertEqual(Measure(quantity: 10, unit: .hectometers), Measure(quantity: 1000, unit: .meters))
    }
    
    // Page C-3, Units of Area
    func test_C3_area() {
        XCTAssertEqual(Measure(quantity: 100, unit: .squareMillimeters), Measure(quantity: 1, unit: .squareCentimeters))
        XCTAssertEqual(Measure(quantity: 100, unit: .squareCentimeters), Measure(quantity: 1, unit: .squareDecimeters))
        XCTAssertEqual(Measure(quantity: 100, unit: .squareDecimeters), Measure(quantity: 1, unit: .squareMeters))
        XCTAssertEqual(Measure(quantity: 100, unit: .squareMeters), Measure(quantity: 1, unit: .squareDecameters))
        XCTAssertEqual(Measure(quantity: 100, unit: .squareMeters), Measure(quantity: 1, unit: .ares))
        XCTAssertEqual(Measure(quantity: 100, unit: .squareDecameters), Measure(quantity: 1, unit: .squareHectometers))
        XCTAssertEqual(Measure(quantity: 100, unit: .squareDecameters), Measure(quantity: 1, unit: .hectares))
        XCTAssertEqual(Measure(quantity: 100, unit: .squareHectometers), Measure(quantity: 1, unit: .squareKilometers))
    }
    
    // Page C-4, Units of Liquid Volume
    func test_C4_liquidVolume() {
        XCTAssertEqual(Measure(quantity: 10, unit: .milliliters), Measure(quantity: 1, unit: .centiliters))
        XCTAssertEqual(Measure(quantity: 10, unit: .centiliters), Measure(quantity: 1, unit: .deciliters))
        XCTAssertEqual(Measure(quantity: 10, unit: .centiliters), Measure(quantity: 100, unit: .milliliters))
        XCTAssertEqual(Measure(quantity: 10, unit: .deciliters), Measure(quantity: 1, unit: .liters))
        XCTAssertEqual(Measure(quantity: 10, unit: .deciliters), Measure(quantity: 1000, unit: .milliliters))
        XCTAssertEqual(Measure(quantity: 10, unit: .liters), Measure(quantity: 1, unit: .decaliters))
        XCTAssertEqual(Measure(quantity: 10, unit: .decaliters), Measure(quantity: 1, unit: .hectoliters))
        XCTAssertEqual(Measure(quantity: 10, unit: .decaliters), Measure(quantity: 100, unit: .liters))
        XCTAssertEqual(Measure(quantity: 10, unit: .hectoliters), Measure(quantity: 1, unit: .kiloliters))
        XCTAssertEqual(Measure(quantity: 10, unit: .hectoliters), Measure(quantity: 1000, unit: .liters))
    }

    // Pages C-4, Units of Volume
    func test_C4_volume() {
        XCTAssertEqual(Measure(quantity: 1000, unit: .cubicMillimeters), Measure(quantity: 1, unit: .cubicCentimeters))
        XCTAssertEqual(Measure(quantity: 1000, unit: .cubicCentimeters), Measure(quantity: 1, unit: .cubicDecimeters))
        XCTAssertEqual(Measure(quantity: 1000, unit: .cubicCentimeters), Measure(quantity: 1000000, unit: .cubicMillimeters))
        XCTAssertEqual(Measure(quantity: 1000, unit: .cubicDecimeters), Measure(quantity: 1, unit: .cubicMeters))
        XCTAssertEqual(Measure(quantity: 1000, unit: .cubicDecimeters), Measure(quantity: 1000000, unit: .cubicCentimeters))
        XCTAssertEqual(Measure(quantity: 1000, unit: .cubicDecimeters), Measure(quantity: 1000000000, unit: .cubicMillimeters))
    }
    
    // Pages C-4, Units of Mass
    func test_C4_mass() {
        XCTAssertEqual(Measure(quantity: 10, unit: .milligrams), Measure(quantity: 1, unit: .centigrams))
        XCTAssertEqual(Measure(quantity: 10, unit: .centigrams), Measure(quantity: 1, unit: .decigrams))
        XCTAssertEqual(Measure(quantity: 10, unit: .centigrams), Measure(quantity: 100, unit: .milligrams))
        XCTAssertEqual(Measure(quantity: 10, unit: .decigrams), Measure(quantity: 1, unit: .grams))
        XCTAssertEqual(Measure(quantity: 10, unit: .decigrams), Measure(quantity: 1000, unit: .milligrams))
        XCTAssertEqual(Measure(quantity: 10, unit: .grams), Measure(quantity: 1, unit: .decagrams))
        XCTAssertEqual(Measure(quantity: 10, unit: .decagrams), Measure(quantity: 1, unit: .hectograms))
        XCTAssertEqual(Measure(quantity: 10, unit: .decagrams), Measure(quantity: 100, unit: .grams))
        XCTAssertEqual(Measure(quantity: 10, unit: .hectograms), Measure(quantity: 1, unit: .kilograms))
        XCTAssertEqual(Measure(quantity: 10, unit: .hectograms), Measure(quantity: 1000, unit: .grams))
        XCTAssertEqual(Measure(quantity: 1000, unit: .kilograms), Measure(quantity: 1, unit: .megagrams))
        XCTAssertEqual(Measure(quantity: 1000, unit: .kilograms), Measure(quantity: 1, unit: .metricTons))
    }
    
    func test_C4_USlength() {
        XCTAssertEqual(Measure(quantity: 12, unit: .inches), Measure(quantity: 1, unit: .feet))
        XCTAssertEqual(Measure(quantity: 3, unit: .feet), Measure(quantity: 1, unit: .yards))
        XCTAssertEqual(Measure(quantity: 16.5, unit: .feet), Measure(quantity: 1, unit: .rods))
        XCTAssertEqual(Measure(quantity: 40, unit: .rods), Measure(quantity: 1, unit: .furlongs))
        XCTAssertEqual(Measure(quantity: 40, unit: .rods), Measure(quantity: 660, unit: .feet))
        XCTAssertEqual(Measure(quantity: 8, unit: .furlongs), Measure(quantity: 1, unit: .miles))
        XCTAssertEqual(Measure(quantity: 8, unit: .furlongs), Measure(quantity: 5280, unit: .feet))
        XCTAssertEqual(Measure(quantity: 1852, unit: .meters), Measure(quantity: 1, unit: .nauticalMiles))
    }
    
    func test_C5_USarea() {
        XCTAssertEqual(Measure(quantity: 144, unit: .squareInches), Measure(quantity: 1, unit: .squareFeet))
        XCTAssertEqual(Measure(quantity: 9, unit: .squareFeet), Measure(quantity: 1, unit: .squareYards))
        XCTAssertEqual(Measure(quantity: 9, unit: .squareFeet), Measure(quantity: 1296, unit: .squareInches))
        XCTAssertEqual(Measure(quantity: 272.25, unit: .squareFeet), Measure(quantity: 1, unit: .squareRods))
        XCTAssertEqual(Measure(quantity: 160, unit: .squareRods), Measure(quantity: 1, unit: .acres))
        XCTAssertEqual(Measure(quantity: 160, unit: .squareRods), Measure(quantity: 43560, unit: .squareFeet))
        XCTAssertEqual(Measure(quantity: 640, unit: .acres), Measure(quantity: 1, unit: .squareMiles))
            // Untested: 1 mile square = 1 section of land
            //           6 miles square = 1 township = 36 sections = 36 square miles
    }
    
    func test_C5_USvolume() {
        XCTAssertEqual(Measure(quantity: 1728, unit: .cubicInches), Measure(quantity: 1, unit: .cubicFeet))
        XCTAssertEqual(Measure(quantity: 27, unit: .cubicFeet), Measure(quantity: 1, unit: .cubicYards))
    }
    
    func test_C5_surveyorsChain() {
        XCTAssertEqual(Measure(quantity: 0.66, unit: .feet), Measure(quantity: 1, unit: .links))
        XCTAssertEqual(Measure(quantity: 100, unit: .links), Measure(quantity: 1, unit: .chains))
        XCTAssertEqual(Measure(quantity: 100, unit: .links), Measure(quantity: 4, unit: .rods))
        XCTAssertEqual(Measure(quantity: 100, unit: .links), Measure(quantity: 66, unit: .feet))
        XCTAssertEqual(Measure(quantity: 80, unit: .chains), Measure(quantity: 1, unit: .miles))
        XCTAssertEqual(Measure(quantity: 80, unit: .chains), Measure(quantity: 320, unit: .rods))
        XCTAssertEqual(Measure(quantity: 80, unit: .chains), Measure(quantity: 5280, unit: .feet))
    }
    
    func test_C5_USliquidVolume() {
        XCTAssertEqual(Measure(quantity: 4, unit: .gills), Measure(quantity: 1, unit: .pints))
        XCTAssertEqual(Measure(quantity: 4, unit: .gills), Measure(quantity: 28.875, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 2, unit: .pints), Measure(quantity: 1, unit: .quarts))
        XCTAssertEqual(Measure(quantity: 2, unit: .pints), Measure(quantity: 57.75, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 4, unit: .quarts), Measure(quantity: 1, unit: .gallons))
        XCTAssertEqual(Measure(quantity: 4, unit: .quarts), Measure(quantity: 231, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 4, unit: .quarts), Measure(quantity: 8, unit: .pints))
        XCTAssertEqual(Measure(quantity: 4, unit: .quarts), Measure(quantity: 32, unit: .gills))
    }
    
    func test_C5_apothecariesLiquidVolume() {
        XCTAssertEqual(Measure(quantity: 60, unit: .minims), Measure(quantity: 1, unit: .fluidDrams))
        XCTAssertEqual(Measure(quantity: 60, unit: .minims), Measure(quantity: 0.2255859375, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 8, unit: .fluidDrams), Measure(quantity: 1, unit: .fluidOunces))
        XCTAssertEqual(Measure(quantity: 8, unit: .fluidDrams), Measure(quantity: 1.8046875, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 16, unit: .fluidOunces), Measure(quantity: 1, unit: .pints))
        XCTAssertEqual(Measure(quantity: 16, unit: .fluidOunces), Measure(quantity: 28.875, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 16, unit: .fluidOunces), Measure(quantity: 128, unit: .fluidDrams))
        XCTAssertEqual(Measure(quantity: 2, unit: .pints), Measure(quantity: 1, unit: .quarts))
        XCTAssertEqual(Measure(quantity: 2, unit: .pints), Measure(quantity: 57.75, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 2, unit: .pints), Measure(quantity: 256, unit: .fluidDrams))
        XCTAssertEqual(Measure(quantity: 2, unit: .pints), Measure(quantity: 32, unit: .fluidOunces))
        XCTAssertEqual(Measure(quantity: 4, unit: .quarts), Measure(quantity: 1, unit: .gallons))
        XCTAssertEqual(Measure(quantity: 4, unit: .quarts), Measure(quantity: 231, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 4, unit: .quarts), Measure(quantity: 1024, unit: .fluidDrams))
        XCTAssertEqual(Measure(quantity: 4, unit: .quarts), Measure(quantity: 128, unit: .fluidOunces))
    }
    
    func test_C6_USdryVolume() {
        XCTAssertEqual(Measure(quantity: 2, unit: .pints), Measure(quantity: 1, unit: .quarts))
            // Untested: 2 pints = 67.2006 (dry) cubic inches
        XCTAssertEqual(Measure(quantity: 8, unit: .quarts), Measure(quantity: 1, unit: .pecks))
        XCTAssertEqual(Measure(quantity: 8, unit: .quarts), Measure(quantity: 16, unit: .pints))
            // Untested: 8 quarts = 537.605 (dry) cubic inches
        XCTAssertEqual(Measure(quantity: 4, unit: .pecks), Measure(quantity: 1, unit: .bushels))
        XCTAssertEqual(Measure(quantity: 4, unit: .pecks), Measure(quantity: 32, unit: .quarts))
            // Untested: 4 pecks = 2150.42 (dry) cubic inches
    }
    
    func test_C6_avoirdupoisMass() {
            // Untested: 1 microlb = 0.000001 lb
        XCTAssertEqual(Measure(quantity: 27 + 11/32, unit: .grains), Measure(quantity: 1, unit: .drams))
        XCTAssertEqual(Measure(quantity: 16, unit: .drams), Measure(quantity: 1, unit: .ounces))
        XCTAssertEqual(Measure(quantity: 16, unit: .drams), Measure(quantity: 437.5, unit: .grains))
        XCTAssertEqual(Measure(quantity: 16, unit: .ounces), Measure(quantity: 1, unit: .pounds))
        XCTAssertEqual(Measure(quantity: 16, unit: .ounces), Measure(quantity: 256, unit: .drams))
        XCTAssertEqual(Measure(quantity: 16, unit: .ounces), Measure(quantity: 7_000, unit: .grains))
        XCTAssertEqual(Measure(quantity: 100, unit: .pounds), Measure(quantity: 1, unit: .hundredweightsUS))
        XCTAssertEqual(Measure(quantity: 20, unit: .hundredweightsUS), Measure(quantity: 1, unit: .tonsUS))
        XCTAssertEqual(Measure(quantity: 20, unit: .hundredweightsUS), Measure(quantity: 2_000, unit: .pounds))
        XCTAssertEqual(Measure(quantity: 112, unit: .pounds), Measure(quantity: 1, unit: .longHundredweights))
        XCTAssertEqual(Measure(quantity: 20, unit: .longHundredweights), Measure(quantity: 1, unit: .longTons))
        XCTAssertEqual(Measure(quantity: 20, unit: .longHundredweights), Measure(quantity: 2_240, unit: .pounds))
    }
    
    func test_C6_troyMass() {
        XCTAssertEqual(Measure(quantity: 24, unit: .grains), Measure(quantity: 1, unit: .pennyweights))
        XCTAssertEqual(Measure(quantity: 20, unit: .pennyweights), Measure(quantity: 1, unit: .ouncesTroy))
        XCTAssertEqual(Measure(quantity: 12, unit: .ouncesTroy), Measure(quantity: 1, unit: .poundsTroy))
        XCTAssertEqual(Measure(quantity: 12, unit: .ouncesTroy), Measure(quantity: 240, unit: .pennyweights))
        XCTAssertEqual(Measure(quantity: 12, unit: .ouncesTroy), Measure(quantity: 5_760, unit: .grains))
    }
    
    func test_C7_apothecariesMass() {
        XCTAssertEqual(Measure(quantity: 20, unit: .grains), Measure(quantity: 1, unit: .scruples))
        XCTAssertEqual(Measure(quantity: 3, unit: .scruples), Measure(quantity: 1, unit: .dramsApothecaries))
        XCTAssertEqual(Measure(quantity: 3, unit: .scruples), Measure(quantity: 60, unit: .grains))
        XCTAssertEqual(Measure(quantity: 8, unit: .dramsApothecaries), Measure(quantity: 1, unit: .ouncesApothecaries))
        XCTAssertEqual(Measure(quantity: 8, unit: .dramsApothecaries), Measure(quantity: 24, unit: .scruples))
        XCTAssertEqual(Measure(quantity: 8, unit: .dramsApothecaries), Measure(quantity: 480, unit: .grains))
        XCTAssertEqual(Measure(quantity: 12, unit: .ouncesApothecaries), Measure(quantity: 1, unit: .poundsApothecaries))
        XCTAssertEqual(Measure(quantity: 12, unit: .ouncesApothecaries), Measure(quantity: 96, unit: .dramsApothecaries))
        XCTAssertEqual(Measure(quantity: 12, unit: .ouncesApothecaries), Measure(quantity: 288, unit: .scruples))
        XCTAssertEqual(Measure(quantity: 12, unit: .ouncesApothecaries), Measure(quantity: 5_760, unit: .grains))
    }
    
    func test_C7_massBritish() {
        XCTAssertEqual(Measure(quantity: 14, unit: .pounds), Measure(quantity: 1, unit: .stones))
        XCTAssertEqual(Measure(quantity: 2, unit: .stones), Measure(quantity: 1, unit: .quartersUK))
        XCTAssertEqual(Measure(quantity: 2, unit: .stones), Measure(quantity: 28, unit: .pounds))
        XCTAssertEqual(Measure(quantity: 4, unit: .quartersUK), Measure(quantity: 1, unit: .hundredweightsUK))
        XCTAssertEqual(Measure(quantity: 4, unit: .quartersUK), Measure(quantity: 112, unit: .pounds))
        XCTAssertEqual(Measure(quantity: 20, unit: .hundredweightsUK), Measure(quantity: 1, unit: .tonsUK))
        XCTAssertEqual(Measure(quantity: 20, unit: .hundredweightsUK), Measure(quantity: 2240, unit: .pounds))
    }
    
    func test_C7_apothecariesLiquidVolumeBritish() {
        // Untested for the moment: To be added with British volume units
    }

    // Pages C-8 to C-14 to be added (only underlined/exact relations, even if redundant given other tests in this file)
    
    func test_C15_length() {
        XCTAssertEqual(Measure(quantity: 1, unit: .ångströms), Measure(quantity: 0.1, unit: .nanometers))
        XCTAssertEqual(Measure(quantity: 1, unit: .ångströms), Measure(quantity: 0.000_1, unit: .micrometers))
        XCTAssertEqual(Measure(quantity: 1, unit: .ångströms), Measure(quantity: 0.000_000_1, unit: .millimeters))
        XCTAssertEqual(Measure(quantity: 1, unit: .chains), Measure(quantity: 66, unit: .feet))
        XCTAssertEqual(Measure(quantity: 1, unit: .fathoms), Measure(quantity: 6, unit: .feet))
        XCTAssertEqual(Measure(quantity: 1, unit: .feet), Measure(quantity: 0.304_8, unit: .meters))
        XCTAssertEqual(Measure(quantity: 1, unit: .furlongs), Measure(quantity: 10, unit: .chains))
        XCTAssertEqual(Measure(quantity: 1, unit: .furlongs), Measure(quantity: 660, unit: .feet))
        XCTAssertEqual(Measure(quantity: 1, unit: .furlongs), Measure(quantity: 0.125, unit: .miles))
        XCTAssertEqual(Measure(quantity: 1, unit: .inches), Measure(quantity: 2.54, unit: .centimeters))
        XCTAssertEqual(Measure(quantity: 1, unit: .leagues), Measure(quantity: 3, unit: .miles))
        XCTAssertEqual(Measure(quantity: 1, unit: .links), Measure(quantity: 0.66, unit: .feet))
        XCTAssertEqual(Measure(quantity: 1, unit: .micrometers), Measure(quantity: 0.001, unit: .millimeters))
    }
    
    func test_C16_length() {
        XCTAssertEqual(Measure(quantity: 1, unit: .miles), Measure(quantity: 5_280, unit: .feet))
        XCTAssertEqual(Measure(quantity: 1, unit: .nauticalMiles), Measure(quantity: 1_852, unit: .meters))
        XCTAssertEqual(Measure(quantity: 1, unit: .millimeters), Measure(quantity: 0.001, unit: .meters))
        XCTAssertEqual(Measure(quantity: 1, unit: .rods), Measure(quantity: 16.5, unit: .feet))
        XCTAssertEqual(Measure(quantity: 1, unit: .yards), Measure(quantity: 0.914_4, unit: .meters))
    }
    
    func test_C16_area() {
        XCTAssertEqual(Measure(quantity: 1, unit: .acres), Measure(quantity: 43_560, unit: .squareFeet))
        XCTAssertEqual(Measure(quantity: 1, unit: .squareInches), Measure(quantity: 6.451_6, unit: .squareCentimeters))
    }
    
    func test_C17_volume() {
        // Untested: 1 bushel = 2150.42 cubic inches
        XCTAssertEqual(Measure(quantity: 1, unit: .cords), Measure(quantity: 128, unit: .cubicFeet))
        XCTAssertEqual(Measure(quantity: 1, unit: .cups), Measure(quantity: 8, unit: .fluidOunces))
        XCTAssertEqual(Measure(quantity: 1, unit: .cups), Measure(quantity: 0.5, unit: .pints))
    }
    
    func test_C18_volume() {
        XCTAssertEqual(Measure(quantity: 1, unit: .fluidDrams), Measure(quantity: 0.125, unit: .fluidOunces))
        XCTAssertEqual(Measure(quantity: 1, unit: .gallons), Measure(quantity: 231, unit: .cubicInches))
        XCTAssertEqual(Measure(quantity: 1, unit: .gallons), Measure(quantity: 128, unit: .fluidOunces))
        XCTAssertEqual(Measure(quantity: 1, unit: .gills), Measure(quantity: 4, unit: .fluidOunces))
        XCTAssertEqual(Measure(quantity: 1, unit: .quarts), Measure(quantity: 57.75, unit: .cubicInches))
    }
    
    func test_C19_volume() {
        XCTAssertEqual(Measure(quantity: 1, unit: .tablespoons), Measure(quantity: 3, unit: .teaspoons))
        XCTAssertEqual(Measure(quantity: 1, unit: .tablespoons), Measure(quantity: 0.5, unit: .fluidOunces))
        XCTAssertEqual(Measure(quantity: 1, unit: .teaspoons), Measure(quantity: 1/3, unit: .tablespoons))
    }
    
    func test_C19_mass() {
        XCTAssertEqual(Measure(quantity: 1, unit: .carats), Measure(quantity: 200, unit: .milligrams))
        XCTAssertEqual(Measure(quantity: 1, unit: .dramsApothecaries), Measure(quantity: 60, unit: .grains))
        XCTAssertEqual(Measure(quantity: 1, unit: .grains), Measure(quantity: 64.798_91, unit: .milligrams))
        XCTAssertEqual(Measure(quantity: 1, unit: .longHundredweights), Measure(quantity: 112, unit: .pounds))
        XCTAssertEqual(Measure(quantity: 1, unit: .hundredweightsUS), Measure(quantity: 100, unit: .pounds))
        XCTAssertEqual(Measure(quantity: 1, unit: .ounces), Measure(quantity: 437.5, unit: .grains))
        XCTAssertEqual(Measure(quantity: 1, unit: .ouncesTroy), Measure(quantity: 480, unit: .grains))
        XCTAssertEqual(Measure(quantity: 1, unit: .ouncesApothecaries), Measure(quantity: 480, unit: .grains))
    }
    
    func test_C20_mass() {
        XCTAssertEqual(Measure(quantity: 1, unit: .pounds), Measure(quantity: 7_000, unit: .grains))
        XCTAssertEqual(Measure(quantity: 1, unit: .pounds), Measure(quantity: 453.592_37, unit: .grams))
        XCTAssertEqual(Measure(quantity: 1, unit: .poundsTroy), Measure(quantity: 5760, unit: .grains))
        XCTAssertEqual(Measure(quantity: 1, unit: .poundsApothecaries), Measure(quantity: 5760, unit: .grains))
        XCTAssertEqual(Measure(quantity: 1, unit: .scruples), Measure(quantity: 20, unit: .grains))
        XCTAssertEqual(Measure(quantity: 1, unit: .longTons), Measure(quantity: 2240, unit: .pounds))
        XCTAssertEqual(Measure(quantity: 1, unit: .longTons), Measure(quantity: 1.12, unit: .tonsUS))
        XCTAssertEqual(Measure(quantity: 1, unit: .tonsUS), Measure(quantity: 2000, unit: .pounds))
    }
    
}

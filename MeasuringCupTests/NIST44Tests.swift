//
//  NIST44Tests.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–16.
//  Copyright © 2016 Ayre. All rights reserved.
//

import XCTest
@testable import MeasuringCup

/// The National Institute of Standard and Technology (NIST) publishes a handbook of [Specifications, Tolerances, and Other Technical Requirements for Weighing and Measuring Devices](http://www.nist.gov/pml/wmd/pubs/hb44-14.cfm, called Handbook 44. In the [Appendix C](http://www.nist.gov/pml/wmd/pubs/upload/appc-14-hb44-final.pdf) it includes the General Tables of Unites of Measurement, with conversion values between many of the units that `MeasuringCup` represents. It is taken here as substance for unit tests to verify the relationships between units.

class NIST44Tests: XCTestCase {

    // Page C-3, Units of Length
    func test_C3_length() {
        XCTAssertEqual(10.millimeters, 1.centimeters)
        XCTAssertEqual(10.centimeters, 1.decimeters)
        XCTAssertEqual(10.centimeters, 100.millimeters)
        XCTAssertEqual(10.decimeters, 1.meters)
        XCTAssertEqual(10.decimeters, 1000.millimeters)
        XCTAssertEqual(10.meters, 1.decameters)
        XCTAssertEqual(10.decameters, 1.hectometers)
        XCTAssertEqual(10.decameters, 100.meters)
        XCTAssertEqual(10.hectometers, 1.kilometers)
        XCTAssertEqual(10.hectometers, 1000.meters)
    }
    
    // Page C-3, Units of Area
    func test_C3_area() {
        XCTAssertEqual(100.squareMillimeters, 1.squareCentimeters)
        XCTAssertEqual(100.squareCentimeters, 1.squareDecimeters)
        XCTAssertEqual(100.squareDecimeters, 1.squareMeters)
        XCTAssertEqual(100.squareMeters, 1.squareDecameters)
        XCTAssertEqual(100.squareMeters, 1.ares)
        XCTAssertEqual(100.squareDecameters, 1.squareHectometers)
        XCTAssertEqual(100.squareDecameters, 1.hectares)
        XCTAssertEqual(100.squareHectometers, 1.squareKilometers)
    }
    
    // Page C-4, Units of Liquid Volume
    func test_C4_liquidVolume() {
        XCTAssertEqual(10.milliliters, 1.centiliters)
        XCTAssertEqual(10.centiliters, 1.deciliters)
        XCTAssertEqual(10.centiliters, 100.milliliters)
        XCTAssertEqual(10.deciliters, 1.liters)
        XCTAssertEqual(10.deciliters, 1000.milliliters)
        XCTAssertEqual(10.liters, 1.decaliters)
        XCTAssertEqual(10.decaliters, 1.hectoliters)
        XCTAssertEqual(10.decaliters, 100.liters)
        XCTAssertEqual(10.hectoliters, 1.kiloliters)
        XCTAssertEqual(10.hectoliters, 1000.liters)
    }

    // Page C-4, Units of Volume
    func test_C4_volume() {
        XCTAssertEqual(1000.cubicMillimeters, 1.cubicCentimeters)
        XCTAssertEqual(1000.cubicCentimeters, 1.cubicDecimeters)
        XCTAssertEqual(1000.cubicCentimeters, 1000000.cubicMillimeters)
        XCTAssertEqual(1000.cubicDecimeters, 1.cubicMeters)
        XCTAssertEqual(1000.cubicDecimeters, 1000000.cubicCentimeters)
        XCTAssertEqual(1000.cubicDecimeters, 1000000000.cubicMillimeters)
    }
    
    // Page C-4, Units of Mass
    func test_C4_mass() {
        XCTAssertEqual(10.milligrams, 1.centigrams)
        XCTAssertEqual(10.centigrams, 1.decigrams)
        XCTAssertEqual(10.centigrams, 100.milligrams)
        XCTAssertEqual(10.decigrams, 1.grams)
        XCTAssertEqual(10.decigrams, 1000.milligrams)
        XCTAssertEqual(10.grams, 1.decagrams)
        XCTAssertEqual(10.decagrams, 1.hectograms)
        XCTAssertEqual(10.decagrams, 100.grams)
        XCTAssertEqual(10.hectograms, 1.kilograms)
        XCTAssertEqual(10.hectograms, 1000.grams)
        XCTAssertEqual(1000.kilograms, 1.megagrams)
        XCTAssertEqual(1000.kilograms, 1.metricTons)
    }
    
    func test_C4_USlength() {
        XCTAssertEqual(12.inches, 1.feet)
        XCTAssertEqual(3.feet, 1.yards)
        XCTAssertEqual(16.5.surveyFeet, 1.surveyRods)
        XCTAssertEqual(40.surveyRods, 1.surveyFurlongs)
        XCTAssertEqual(40.surveyRods, 660.surveyFeet)
        XCTAssertEqual(8.surveyFurlongs, 1.surveyMiles)
        XCTAssertEqual(8.surveyFurlongs, 5280.surveyFeet)
        XCTAssertEqual(1852.meters, 1.nauticalMiles)
    }
    
    func test_C5_USarea() {
        XCTAssertEqual(144.squareInches, 1.squareFeet)
        XCTAssertEqual(9.squareFeet, 1.squareYards)
        XCTAssertEqual(9.squareFeet, 1296.squareInches)
        XCTAssertEqual(272.25.squareSurveyFeet, 1.squareSurveyRods)
        XCTAssertEqual(160.squareSurveyRods, 1.acres)
        XCTAssertEqual(160.squareSurveyRods, 43560.squareSurveyFeet)
        XCTAssertEqual(640.acres, 1.squareSurveyMiles)
            // Untested: 1 mile square = 1 section of land
            //           6 miles square = 1 township = 36 sections = 36 square miles
    }
    
    func test_C5_USvolume() {
        XCTAssertEqual(1728.cubicInches, 1.cubicFeet)
        XCTAssertEqual(27.cubicFeet, 1.cubicYards)
    }
    
    func test_C5_surveyorsChain() {
        XCTAssertEqual(0.66.surveyFeet, 1.surveyLinks)
        XCTAssertEqual(100.surveyLinks, 1.surveyChains)
        XCTAssertEqual(100.surveyLinks, 4.surveyRods)
        XCTAssertEqual(100.surveyLinks, 66.surveyFeet)
        XCTAssertEqual(80.surveyChains, 1.surveyMiles)
        XCTAssertEqual(80.surveyChains, 320.surveyRods)
        XCTAssertEqual(80.surveyChains, 5280.surveyFeet)
    }
    
    func test_C5_USliquidVolume() {
        XCTAssertEqual(4.gills(.american), 1.pints(.american))
        XCTAssertEqual(4.gills(.american), 28.875.cubicInches)
        XCTAssertEqual(2.pints(.american), 1.quarts(.american))
        XCTAssertEqual(2.pints(.american), 57.75.cubicInches)
        XCTAssertEqual(4.quarts(.american), 1.gallons(.american))
        XCTAssertEqual(4.quarts(.american), 231.cubicInches)
        XCTAssertEqual(4.quarts(.american), 8.pints(.american))
        XCTAssertEqual(4.quarts(.american), 32.gills(.american))
    }
    
    func test_C5_apothecariesLiquidVolume() {
        XCTAssertEqual(60.minims(.american), 1.fluidDrams(.american))
        XCTAssertEqual(60.minims(.american), 0.2255859375.cubicInches)
        XCTAssertEqual(8.fluidDrams(.american), 1.fluidOunces(.american))
        XCTAssertEqual(8.fluidDrams(.american), 1.8046875.cubicInches)
        XCTAssertEqual(16.fluidOunces(.american), 1.pints(.american))
        XCTAssertEqual(16.fluidOunces(.american), 28.875.cubicInches)
        XCTAssertEqual(16.fluidOunces(.american), 128.fluidDrams(.american))
        XCTAssertEqual(2.pints(.american), 1.quarts(.american))
        XCTAssertEqual(2.pints(.american), 57.75.cubicInches)
        XCTAssertEqual(2.pints(.american), 256.fluidDrams(.american))
        XCTAssertEqual(2.pints(.american), 32.fluidOunces(.american))
        XCTAssertEqual(4.quarts(.american), 1.gallons(.american))
        XCTAssertEqual(4.quarts(.american), 231.cubicInches)
        XCTAssertEqual(4.quarts(.american), 1024.fluidDrams(.american))
        XCTAssertEqual(4.quarts(.american), 128.fluidOunces(.american))
    }
    
    func test_C6_USdryVolume() {
        XCTAssertEqual(2.dryPints, 1.dryQuarts)
        XCTAssertEqual(1.dryQuarts, 67.200_625.cubicInches)
        XCTAssertEqual(8.dryQuarts, 1.pecks(.american))
        XCTAssertEqual(8.dryQuarts, 16.dryPints)
        XCTAssertEqual(8.dryQuarts, 537.605.cubicInches)
        XCTAssertEqual(4.pecks(.american), 1.bushels(.american))
        XCTAssertEqual(4.pecks(.american), 32.dryQuarts)
        XCTAssertEqual(4.pecks(.american), 2_150.42.cubicInches)
    }
    
    func test_C6_avoirdupoisMass() {
            // Untested: 1 microlb = 0.000001 lb
        XCTAssertEqual((27 + 11.0/32).grains, 1.drams)
        XCTAssertEqual(16.drams, 1.ounces)
        XCTAssertEqual(16.drams, 437.5.grains)
        XCTAssertEqual(16.ounces, 1.pounds)
        XCTAssertEqual(16.ounces, 256.drams)
        XCTAssertEqual(16.ounces, 7_000.grains)
        XCTAssertEqual(100.pounds, 1.hundredweights(.american))
        XCTAssertEqual(20.hundredweights(.american), 1.tons(.american))
        XCTAssertEqual(20.hundredweights(.american), 2_000.pounds)
        XCTAssertEqual(112.pounds, 1.longHundredweights)
        XCTAssertEqual(20.longHundredweights, 1.longTons)
        XCTAssertEqual(20.longHundredweights, 2_240.pounds)
    }
    
    func test_C6_troyMass() {
        XCTAssertEqual(24.grains, 1.pennyweights)
        XCTAssertEqual(20.pennyweights, 1.ouncesTroy)
        XCTAssertEqual(12.ouncesTroy, 1.poundsTroy)
        XCTAssertEqual(12.ouncesTroy, 240.pennyweights)
        XCTAssertEqual(12.ouncesTroy, 5_760.grains)
    }
    
    func test_C7_apothecariesMass() {
        XCTAssertEqual(20.grains, 1.scruples)
        XCTAssertEqual(3.scruples, 1.dramsApothecaries)
        XCTAssertEqual(3.scruples, 60.grains)
        XCTAssertEqual(8.dramsApothecaries, 1.ouncesApothecaries)
        XCTAssertEqual(8.dramsApothecaries, 24.scruples)
        XCTAssertEqual(8.dramsApothecaries, 480.grains)
        XCTAssertEqual(12.ouncesApothecaries, 1.poundsApothecaries)
        XCTAssertEqual(12.ouncesApothecaries, 96.dramsApothecaries)
        XCTAssertEqual(12.ouncesApothecaries, 288.scruples)
        XCTAssertEqual(12.ouncesApothecaries, 5_760.grains)
    }
    
    func test_C7_massBritish() {
        XCTAssertEqual(14.pounds, 1.stone)
        XCTAssertEqual(2.stone, 1.quarters(.british))
        XCTAssertEqual(2.stone, 28.pounds)
        XCTAssertEqual(4.quarters(.british), 1.hundredweights(.british))
        XCTAssertEqual(4.quarters(.british), 112.pounds)
        XCTAssertEqual(20.hundredweights(.british), 1.tons(.british))
        XCTAssertEqual(20.hundredweights(.british), 2240.pounds)
    }
    
    func test_C7_apothecariesLiquidVolumeBritish() {
        XCTAssertEqual(8.pints(.british), 1.gallons(.british))
        XCTAssertEqual(8.pints(.british), 160.fluidOunces(.british))
    }

    func test_C8_length_international() {
        XCTAssertEqual(1.inches, 2.54.centimeters)
        XCTAssertEqual(1.inches, 0.025_4.meters)
        XCTAssertEqual(1.feet, 12.inches)
        XCTAssertEqual(1.feet, 30.48.centimeters)
        XCTAssertEqual(1.feet, 0.3048.meters)
        XCTAssertEqual(1.yards, 36.inches)
        XCTAssertEqual(1.yards, 3.feet)
        XCTAssertEqual(1.yards, 91.44.centimeters)
        XCTAssertEqual(1.yards, 0.9144.meters)
        XCTAssertEqual(1.miles, 63_360.inches)
        XCTAssertEqual(1.miles, 5_280.feet)
        XCTAssertEqual(1.miles, 1_760.yards)
        XCTAssertEqual(1.miles, 160_934.4.centimeters)
        XCTAssertEqual(1.miles, 1_609.344.meters)
        XCTAssertEqual(1.centimeters, 0.01.meters)
        XCTAssertEqual(1.meters, 100.centimeters)
    }
    
    func test_C8_length_survey() {
        XCTAssertEqual(1.surveyLinks, 0.66.surveyFeet)
        XCTAssertEqual(1.surveyLinks, 0.04.surveyRods)
        XCTAssertEqual(1.surveyLinks, 0.01.surveyChains)
        XCTAssertEqual(1.surveyLinks, 0.000_125.surveyMiles)
        XCTAssertEqual(1.surveyRods, 25.surveyLinks)
        XCTAssertEqual(1.surveyRods, 16.5.surveyFeet)
        XCTAssertEqual(1.surveyRods, 0.25.surveyChains)
        XCTAssertEqual(1.surveyRods, 0.003_125.surveyMiles)
        XCTAssertEqual(1.surveyChains, 100.surveyLinks)
        XCTAssertEqual(1.surveyChains, 66.surveyFeet)
        XCTAssertEqual(1.surveyChains, 4.surveyRods)
        XCTAssertEqual(1.surveyChains, 0.012_5.surveyMiles)
        XCTAssertEqual(1.surveyMiles, 8_000.surveyLinks)
        XCTAssertEqual(1.surveyMiles, 5_280.surveyFeet)
        XCTAssertEqual(1.surveyMiles, 320.surveyRods)
        XCTAssertEqual(1.surveyMiles, 80.surveyChains)
    }
    
    func test_C8_footnote() {
        XCTAssertEqual(1.feet, 0.999_998.surveyFeet)
        XCTAssertEqual(1.miles, 0.999_998.surveyMiles)
    }
    
    func test_C9_area_international() {
        XCTAssertEqual(1.squareInches, 6.451_6.squareCentimeters)
        XCTAssertEqual(1.squareInches, 0.000_645_16.squareMeters)
        XCTAssertEqual(1.squareFeet, 144.squareInches)
        XCTAssertEqual(1.squareFeet, 929.030_4.squareCentimeters)
        XCTAssertEqual(1.squareFeet, 0.092_903_04.squareMeters)
        XCTAssertEqual(1.squareYards, 1_296.squareInches)
        XCTAssertEqual(1.squareYards, 9.squareFeet)
        XCTAssertEqual(1.squareYards, 8361.273_6.squareCentimeters)
        XCTAssertEqual(1.squareYards, 0.836_127_36.squareMeters)
        XCTAssertEqual(1.squareMiles, 4_014_489_600.0.squareInches)
        XCTAssertEqual(1.squareMiles, 27_878_400.squareFeet)
        XCTAssertEqual(1.squareMiles, 3_097_600.squareYards)
        XCTAssertEqual(1.squareMiles, 25_899_881_103.36.squareCentimeters)
        XCTAssertEqual(1.squareMiles, 2_589_988.110_336.squareMeters)
        XCTAssertEqual(1.squareCentimeters, 0.000_1.squareMeters)
        XCTAssertEqual(1.squareMeters, 10_000.squareCentimeters)
    }
    
    func test_C9_footnote() {
        XCTAssertEqual(1.surveyFeet, (1200.0/3937).meters)
        XCTAssertEqual(1.feet, (12 * 0.0254).meters)
        XCTAssertEqual(1.feet, (0.0254 * 39.37).surveyFeet)
    }
    
    func test_C9_area_survey() {
        XCTAssertEqual(1.squareSurveyRods, 272.25.squareSurveyFeet)
        XCTAssertEqual(1.squareSurveyRods, 0.062_5.squareSurveyChains)
        XCTAssertEqual(1.squareSurveyRods, 0.006_25.acres)
        XCTAssertEqual(1.squareSurveyRods, 0.000_009_765_625.squareSurveyMiles)
        XCTAssertEqual(1.squareSurveyChains, 4_356.squareSurveyFeet)
        XCTAssertEqual(1.squareSurveyChains, 16.squareSurveyRods)
        XCTAssertEqual(1.squareSurveyChains, 0.1.acres)
        XCTAssertEqual(1.squareSurveyChains, 0.000_156_25.squareSurveyMiles)
        XCTAssertEqual(1.acres, 43_560.squareSurveyFeet)
        XCTAssertEqual(1.acres, 160.squareSurveyRods)
        XCTAssertEqual(1.acres, 10.squareSurveyChains)
        XCTAssertEqual(1.acres, 0.001_562_5.squareSurveyMiles)
        XCTAssertEqual(1.squareSurveyMiles, 27_878_400.squareSurveyFeet)
        XCTAssertEqual(1.squareSurveyMiles, 102_400.squareSurveyRods)
        XCTAssertEqual(1.squareSurveyMiles, 6_400.squareSurveyChains)
        XCTAssertEqual(1.squareSurveyMiles, 640.acres)
        XCTAssertEqual(1.squareMeters, 0.000_1.hectares)
        XCTAssertEqual(1.hectares, 10_000.squareMeters)
    }
    
    func test_C10_volume() {
        XCTAssertEqual(1.cubicInches, 16.387_064.cubicCentimeters)
        XCTAssertEqual(1.cubicInches, 16.387_064.milliliters)
        XCTAssertEqual(1.cubicInches, 0.016_387_064.cubicDecimeters)
        XCTAssertEqual(1.cubicInches, 0.016_387_064.liters)
        XCTAssertEqual(1.cubicInches, 0.000_016_387_064.cubicMeters)
        XCTAssertEqual(1.cubicFeet, 1_728.cubicInches)
        XCTAssertEqual(1.cubicFeet, 28_316.846_592.cubicCentimeters)
        XCTAssertEqual(1.cubicFeet, 28_316.846_592.milliliters)
        XCTAssertEqual(1.cubicFeet, 28.316_846_592.cubicDecimeters)
        XCTAssertEqual(1.cubicFeet, 28.316_846_592.liters)
        XCTAssertEqual(1.cubicFeet, 0.028_316_846_592.cubicMeters)
        XCTAssertEqual(1.cubicYards, 46_656.cubicInches)
        XCTAssertEqual(1.cubicYards, 27.cubicFeet)
        XCTAssertEqual(1.cubicYards, 764_554.857_984.cubicCentimeters)
        XCTAssertEqual(1.cubicYards, 764_554.857_984.milliliters)
        XCTAssertEqual(1.cubicYards, 764.554_857_984.cubicDecimeters)
        XCTAssertEqual(1.cubicYards, 764.554_857_984.liters)
        XCTAssertEqual(1.cubicYards, 0.764_554_857_984.cubicMeters)
        XCTAssertEqual(1.cubicCentimeters, 0.001.cubicDecimeters)
        XCTAssertEqual(1.cubicCentimeters, 0.001.liters)
        XCTAssertEqual(1.cubicCentimeters, 0.000_001.cubicMeters)
        XCTAssertEqual(1.milliliters, 0.001.cubicDecimeters)
        XCTAssertEqual(1.milliliters, 0.001.liters)
        XCTAssertEqual(1.milliliters, 0.000_001.cubicMeters)
        XCTAssertEqual(1.cubicDecimeters, 1_000.cubicCentimeters)
        XCTAssertEqual(1.cubicDecimeters, 1_000.milliliters)
        XCTAssertEqual(1.cubicDecimeters, 0.001.cubicMeters)
        XCTAssertEqual(1.liters, 1_000.cubicCentimeters)
        XCTAssertEqual(1.liters, 1_000.milliliters)
        XCTAssertEqual(1.liters, 0.001.cubicMeters)
        XCTAssertEqual(1.cubicMeters, 1_000_000.cubicCentimeters)
        XCTAssertEqual(1.cubicMeters, 1_000_000.milliliters)
        XCTAssertEqual(1.cubicMeters, 1_000.cubicDecimeters)
        XCTAssertEqual(1.cubicMeters, 1_000.liters)
    }
    
    func test_C11_dryVolume() {
        XCTAssertEqual(1.dryPints, 0.5.dryQuarts)
        XCTAssertEqual(1.dryPints, 0.062_5.pecks(.american))
        XCTAssertEqual(1.dryPints, 0.015_625.bushels(.american))
        XCTAssertEqual(1.dryQuarts, 2.dryPints)
        XCTAssertEqual(1.dryQuarts, 0.125.pecks(.american))
        XCTAssertEqual(1.dryQuarts, 0.031_25.bushels(.american))
        XCTAssertEqual(1.pecks(.american), 16.dryPints)
        XCTAssertEqual(1.pecks(.american), 8.dryQuarts)
        XCTAssertEqual(1.pecks(.american), 0.25.bushels(.american))
        XCTAssertEqual(1.pecks(.american), 537.605.cubicInches)
        XCTAssertEqual(1.bushels(.american), 64.dryPints)
        XCTAssertEqual(1.bushels(.american), 32.dryQuarts)
        XCTAssertEqual(1.bushels(.american), 4.pecks(.american))
        XCTAssertEqual(1.bushels(.american), 2_150.42.cubicInches)
        XCTAssertEqual(1.bushels(.american), 35.239_070_166_88.liters)
        XCTAssertEqual(1.bushels(.american), 0.035_239_070_166_88.cubicMeters)
    }
    
    func test_C15_length() {
        XCTAssertEqual(1.ångströms, 0.1.nanometers)
        XCTAssertEqual(1.ångströms, 0.000_1.micrometers)
        XCTAssertEqual(1.ångströms, 0.000_000_1.millimeters)
        XCTAssertEqual(1.surveyChains, 66.surveyFeet)
        XCTAssertEqual(1.fathoms, 6.feet)
        XCTAssertEqual(1.feet, 0.304_8.meters)
        XCTAssertEqual(1.surveyFurlongs, 10.surveyChains)
        XCTAssertEqual(1.surveyFurlongs, 660.surveyFeet)
        XCTAssertEqual(1.surveyFurlongs, 0.125.surveyMiles)
        XCTAssertEqual(1.inches, 2.54.centimeters)
        XCTAssertEqual(1.leagues, 3.miles)
        XCTAssertEqual(1.surveyLinks, 0.66.surveyFeet)
        XCTAssertEqual(1.micrometers, 0.001.millimeters)
    }
    
    func test_C16_length() {
        XCTAssertEqual(1.miles, 5_280.feet)
        XCTAssertEqual(1.nauticalMiles, 1_852.meters)
        XCTAssertEqual(1.millimeters, 0.001.meters)
        XCTAssertEqual(1.surveyRods, 16.5.surveyFeet)
        XCTAssertEqual(1.yards, 0.914_4.meters)
    }
    
    func test_C16_area() {
        XCTAssertEqual(1.acres, 43_560.squareSurveyFeet)
        XCTAssertEqual(1.squareInches, 6.451_6.squareCentimeters)
    }
    
    func test_C17_volume() {
        // Untested: 1 bushel = 2150.42 cubic inches
        XCTAssertEqual(1.cords, 128.cubicFeet)
        XCTAssertEqual(1.cups, 8.fluidOunces(.american))
        XCTAssertEqual(1.cups, 0.5.pints(.american))
    }
    
    func test_C18_volume() {
        XCTAssertEqual(1.fluidDrams(.american), 0.125.fluidOunces(.american))
        XCTAssertEqual(1.gallons(.american), 231.cubicInches)
        XCTAssertEqual(1.gallons(.american), 128.fluidOunces(.american))
        XCTAssertEqual(1.gills(.american), 4.fluidOunces(.american))
        XCTAssertEqual(1.quarts(.american), 57.75.cubicInches)
    }
    
    func test_C19_volume() {
        XCTAssertEqual(1.tablespoons, 3.teaspoons)
        XCTAssertEqual(1.tablespoons, 0.5.fluidOunces(.american))
        XCTAssertEqual(1.teaspoons, (1.0/3).tablespoons)
    }
    
    func test_C19_mass() {
        XCTAssertEqual(1.carats, 200.milligrams)
        XCTAssertEqual(1.dramsApothecaries, 60.grains)
        XCTAssertEqual(1.grains, 64.798_91.milligrams)
        XCTAssertEqual(1.longHundredweights, 112.pounds)
        XCTAssertEqual(1.hundredweights(.american), 100.pounds)
        XCTAssertEqual(1.ounces, 437.5.grains)
        XCTAssertEqual(1.ouncesTroy, 480.grains)
        XCTAssertEqual(1.ouncesApothecaries, 480.grains)
    }
    
    func test_C20_mass() {
        XCTAssertEqual(1.pounds, 7_000.grains)
        XCTAssertEqual(1.pounds, 453.592_37.grams)
        XCTAssertEqual(1.poundsTroy, 5760.grains)
        XCTAssertEqual(1.poundsApothecaries, 5760.grains)
        XCTAssertEqual(1.scruples, 20.grains)
        XCTAssertEqual(1.longTons, 2240.pounds)
        XCTAssertEqual(1.longTons, 1.12.tons(.american))
        XCTAssertEqual(1.tons(.american), 2000.pounds)
    }
    
}

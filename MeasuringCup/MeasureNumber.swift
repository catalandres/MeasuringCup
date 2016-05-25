//
//  MeasureNumber.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–19.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public protocol MeasureNumber {}

extension Int: MeasureNumber {}
extension Float: MeasureNumber {}
extension Double: MeasureNumber {}

extension MeasureNumber {
    var yoctometers: Measure {
        return Measure(quantity: self, unit: .yoctometers)
    }
    var zeptometers: Measure {
        return Measure(quantity: self, unit: .zeptometers)
    }
    var attometers: Measure {
        return Measure(quantity: self, unit: .attometers)
    }
    var femtometers: Measure {
        return Measure(quantity: self, unit: .femtometers)
    }
    var picometers: Measure {
        return Measure(quantity: self, unit: .picometers)
    }
    var nanometers: Measure {
        return Measure(quantity: self, unit: .nanometers)
    }
    var micrometers: Measure {
        return Measure(quantity: self, unit: .micrometers)
    }
    var millimeters: Measure {
        return Measure(quantity: self, unit: .millimeters)
    }
    var centimeters: Measure {
        return Measure(quantity: self, unit: .centimeters)
    }
    var decimeters: Measure {
        return Measure(quantity: self, unit: .decimeters)
    }
    var meters: Measure {
        return Measure(quantity: self, unit: .meters)
    }
    var decameters: Measure {
        return Measure(quantity: self, unit: .decameters)
    }
    var hectometers: Measure {
        return Measure(quantity: self, unit: .hectometers)
    }
    var kilometers: Measure {
        return Measure(quantity: self, unit: .kilometers)
    }
    var megameters: Measure {
        return Measure(quantity: self, unit: .megameters)
    }
    var gigameters: Measure {
        return Measure(quantity: self, unit: .gigameters)
    }
    var terameters: Measure {
        return Measure(quantity: self, unit: .terameters)
    }
    var petameters: Measure {
        return Measure(quantity: self, unit: .petameters)
    }
    var exameters: Measure {
        return Measure(quantity: self, unit: .exameters)
    }
    var zettameters: Measure {
        return Measure(quantity: self, unit: .zettameters)
    }
    var yottameters: Measure {
        return Measure(quantity: self, unit: .yottameters)
    }
    var fermis: Measure {
        return Measure(quantity: self, unit: .fermis)
    }
    var ångströms: Measure {
        return Measure(quantity: self, unit: .ångströms)
    }
    var microns: Measure {
        return Measure(quantity: self, unit: .microns)
    }
    var thou: Measure {
        return Measure(quantity: self, unit: .thou)
    }
    var mils: Measure {
        return Measure(quantity: self, unit: .mils)
    }
    var inches: Measure {
        return Measure(quantity: self, unit: .inches)
    }
    var feet: Measure {
        return Measure(quantity: self, unit: .feet)
    }
    var yards: Measure {
        return Measure(quantity: self, unit: .yards)
    }
    var miles: Measure {
        return Measure(quantity: self, unit: .miles)
    }
    var leagues: Measure {
        return Measure(quantity: self, unit: .leagues)
    }
    
    // MARK: - Survey length
    var surveyLinks: Measure {
        return Measure(quantity: self, unit: .surveyLinks)
    }
    var surveyFeet: Measure {
        return Measure(quantity: self, unit: .surveyFeet)
    }
    var surveyRods: Measure {
        return Measure(quantity: self, unit: .surveyRods)
    }
    var surveyChains: Measure {
        return Measure(quantity: self, unit: .surveyChains)
    }
    var surveyMiles: Measure {
        return Measure(quantity: self, unit: .surveyMiles)
    }
    var surveyFurlongs: Measure {
        return Measure(quantity: self, unit: .surveyFurlongs)
    }

    // MARK: - Nautical length
    var fathoms: Measure {
        return Measure(quantity: self, unit: .fathoms)
    }
    var nauticalMiles: Measure {
        return Measure(quantity: self, unit: .nauticalMiles)
    }

    var yoctograms: Measure {
        return Measure(quantity: self, unit: .yoctograms)
    }
    var zeptograms: Measure {
        return Measure(quantity: self, unit: .zeptograms)
    }
    var attograms: Measure {
        return Measure(quantity: self, unit: .attograms)
    }
    var femtograms: Measure {
        return Measure(quantity: self, unit: .femtograms)
    }
    var picograms: Measure {
        return Measure(quantity: self, unit: .picograms)
    }
    var nanograms: Measure {
        return Measure(quantity: self, unit: .nanograms)
    }
    var micrograms: Measure {
        return Measure(quantity: self, unit: .micrograms)
    }
    var milligrams: Measure {
        return Measure(quantity: self, unit: .milligrams)
    }
    var centigrams: Measure {
        return Measure(quantity: self, unit: .centigrams)
    }
    var decigrams: Measure {
        return Measure(quantity: self, unit: .decigrams)
    }
    var grams: Measure {
        return Measure(quantity: self, unit: .grams)
    }
    var decagrams: Measure {
        return Measure(quantity: self, unit: .decagrams)
    }
    var hectograms: Measure {
        return Measure(quantity: self, unit: .hectograms)
    }
    var kilograms: Measure {
        return Measure(quantity: self, unit: .kilograms)
    }
    var megagrams: Measure {
        return Measure(quantity: self, unit: .megagrams)
    }
    var gigagrams: Measure {
        return Measure(quantity: self, unit: .gigagrams)
    }
    var teragrams: Measure {
        return Measure(quantity: self, unit: .teragrams)
    }
    var petagrams: Measure {
        return Measure(quantity: self, unit: .petagrams)
    }
    var exagrams: Measure {
        return Measure(quantity: self, unit: .exagrams)
    }
    var zettagrams: Measure {
        return Measure(quantity: self, unit: .zettagrams)
    }
    var yottagrams: Measure {
        return Measure(quantity: self, unit: .yottagrams)
    }
    var metricTons: Measure {
        return Measure(quantity: self, unit: .metricTons)
    }
    var carats: Measure {
        return Measure(quantity: self, unit: .carats)
    }
    var grains: Measure {
        return Measure(quantity: self, unit: .grains)
    }
    var drams: Measure {
        return Measure(quantity: self, unit: .drams)
    }
    var ounces: Measure {
        return Measure(quantity: self, unit: .ounces)
    }
    var pounds: Measure {
        return Measure(quantity: self, unit: .pounds)
    }
    func quarters(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .quarters(system))
    }
    func hundredweights(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .hundredweights(system))
    }
    var longHundredweights: Measure {
        return Measure(quantity: self, unit: .longHundredweights)
    }
    func tons(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .tons(system))
    }
    var longTons: Measure {
        return Measure(quantity: self, unit: .longTons)
    }
    var stone: Measure {
        return Measure(quantity: self, unit: .stone)
    }
    var pennyweights: Measure {
        return Measure(quantity: self, unit: .pennyweights)
    }
    var ouncesTroy: Measure {
        return Measure(quantity: self, unit: .ouncesTroy)
    }
    var poundsTroy: Measure {
        return Measure(quantity: self, unit: .poundsTroy)
    }
    var scruples: Measure {
        return Measure(quantity: self, unit: .scruples)
    }
    var dramsApothecaries: Measure {
        return Measure(quantity: self, unit: .dramsApothecaries)
    }
    var ouncesApothecaries: Measure {
        return Measure(quantity: self, unit: .ouncesApothecaries)
    }
    var poundsApothecaries: Measure {
        return Measure(quantity: self, unit: .poundsApothecaries)
    }
    
    // MARK: - Area
    var squareYoctometers: Measure {
        return Measure(quantity: self, unit: .squareYoctometers)
    }
    var squareZeptometers: Measure {
        return Measure(quantity: self, unit: .squareZeptometers)
    }
    var squareAttometers: Measure {
        return Measure(quantity: self, unit: .squareAttometers)
    }
    var squareFemtometers: Measure {
        return Measure(quantity: self, unit: .squareFemtometers)
    }
    var squarePicometers: Measure {
        return Measure(quantity: self, unit: .squarePicometers)
    }
    var squareNanometers: Measure {
        return Measure(quantity: self, unit: .squareNanometers)
    }
    var squareMicrometers: Measure {
        return Measure(quantity: self, unit: .squareMicrometers)
    }
    var squareMillimeters: Measure {
        return Measure(quantity: self, unit: .squareMillimeters)
    }
    var squareCentimeters: Measure {
        return Measure(quantity: self, unit: .squareCentimeters)
    }
    var squareDecimeters: Measure {
        return Measure(quantity: self, unit: .squareDecimeters)
    }
    var squareMeters: Measure {
        return Measure(quantity: self, unit: .squareMeters)
    }
    var squareDecameters: Measure {
        return Measure(quantity: self, unit: .squareDecameters)
    }
    var squareHectometers: Measure {
        return Measure(quantity: self, unit: .squareHectometers)
    }
    var squareKilometers: Measure {
        return Measure(quantity: self, unit: .squareKilometers)
    }
    var squareMegameters: Measure {
        return Measure(quantity: self, unit: .squareMegameters)
    }
    var squareGigameters: Measure {
        return Measure(quantity: self, unit: .squareGigameters)
    }
    var squareTerameters: Measure {
        return Measure(quantity: self, unit: .squareTerameters)
    }
    var squarePetameters: Measure {
        return Measure(quantity: self, unit: .squarePetameters)
    }
    var squareExameters: Measure {
        return Measure(quantity: self, unit: .squareExameters)
    }
    var squareZettameters: Measure {
        return Measure(quantity: self, unit: .squareZettameters)
    }
    var squareYottameters: Measure {
        return Measure(quantity: self, unit: .squareYottameters)
    }
    var centiares: Measure {
        return Measure(quantity: self, unit: .centiares)
    }
    var deciares: Measure {
        return Measure(quantity: self, unit: .deciares)
    }
    var ares: Measure {
        return Measure(quantity: self, unit: .ares)
    }
    var decares: Measure {
        return Measure(quantity: self, unit: .decares)
    }
    var hectares: Measure {
        return Measure(quantity: self, unit: .hectares)
    }
    var acres: Measure {
        return Measure(quantity: self, unit: .acres)
    }
    var squareInches: Measure {
        return Measure(quantity: self, unit: .squareInches)
    }
    var squareFeet: Measure {
        return Measure(quantity: self, unit: .squareFeet)
    }
    var squareYards: Measure {
        return Measure(quantity: self, unit: .squareYards)
    }
    var squareMiles: Measure {
        return Measure(quantity: self, unit: .squareMiles)
    }
    var squareRods: Measure {
        return Measure(quantity: self, unit: .squareRods)
    }
    var squareSurveyFeet: Measure {
        return Measure(quantity: self, unit: .squareSurveyFeet)
    }
    var squareSurveyRods: Measure {
        return Measure(quantity: self, unit: .squareSurveyRods)
    }
    var squareSurveyChains: Measure {
        return Measure(quantity: self, unit: .squareSurveyChains)
    }
    var squareSurveyMiles: Measure {
        return Measure(quantity: self, unit: .squareSurveyMiles)
    }
    var cubicYoctometers: Measure {
        return Measure(quantity: self, unit: .cubicYoctometers)
    }
    var cubicZeptometers: Measure {
        return Measure(quantity: self, unit: .cubicZeptometers)
    }
    var cubicAttometers: Measure {
        return Measure(quantity: self, unit: .cubicAttometers)
    }
    var cubicFemtometers: Measure {
        return Measure(quantity: self, unit: .cubicFemtometers)
    }
    var cubicPicometers: Measure {
        return Measure(quantity: self, unit: .cubicPicometers)
    }
    var cubicNanometers: Measure {
        return Measure(quantity: self, unit: .cubicNanometers)
    }
    var cubicMicrometers: Measure {
        return Measure(quantity: self, unit: .cubicMicrometers)
    }
    var cubicMillimeters: Measure {
        return Measure(quantity: self, unit: .cubicMillimeters)
    }
    var cubicCentimeters: Measure {
        return Measure(quantity: self, unit: .cubicCentimeters)
    }
    var cubicDecimeters: Measure {
        return Measure(quantity: self, unit: .cubicDecimeters)
    }
    var cubicMeters: Measure {
        return Measure(quantity: self, unit: .cubicMeters)
    }
    var cubicDecameters: Measure {
        return Measure(quantity: self, unit: .cubicDecameters)
    }
    var cubicHectometers: Measure {
        return Measure(quantity: self, unit: .cubicHectometers)
    }
    var cubicKilometers: Measure {
        return Measure(quantity: self, unit: .cubicKilometers)
    }
    var cubicMegameters: Measure {
        return Measure(quantity: self, unit: .cubicMegameters)
    }
    var cubicGigameters: Measure {
        return Measure(quantity: self, unit: .cubicGigameters)
    }
    var cubicTerameters: Measure {
        return Measure(quantity: self, unit: .cubicTerameters)
    }
    var cubicPetameters: Measure {
        return Measure(quantity: self, unit: .cubicPetameters)
    }
    var cubicExameters: Measure {
        return Measure(quantity: self, unit: .cubicExameters)
    }
    var cubicZettameters: Measure {
        return Measure(quantity: self, unit: .cubicZettameters)
    }
    var cubicYottameters: Measure {
        return Measure(quantity: self, unit: .cubicYottameters)
    }
    var yoctoliters: Measure {
        return Measure(quantity: self, unit: .yoctoliters)
    }
    var zeptoliters: Measure {
        return Measure(quantity: self, unit: .zeptoliters)
    }
    var attoliters: Measure {
        return Measure(quantity: self, unit: .attoliters)
    }
    var femtoliters: Measure {
        return Measure(quantity: self, unit: .femtoliters)
    }
    var picoliters: Measure {
        return Measure(quantity: self, unit: .picoliters)
    }
    var nanoliters: Measure {
        return Measure(quantity: self, unit: .nanoliters)
    }
    var microliters: Measure {
        return Measure(quantity: self, unit: .microliters)
    }
    var milliliters: Measure {
        return Measure(quantity: self, unit: .milliliters)
    }
    var centiliters: Measure {
        return Measure(quantity: self, unit: .centiliters)
    }
    var deciliters: Measure {
        return Measure(quantity: self, unit: .deciliters)
    }
    var liters: Measure {
        return Measure(quantity: self, unit: .liters)
    }
    var decaliters: Measure {
        return Measure(quantity: self, unit: .decaliters)
    }
    var hectoliters: Measure {
        return Measure(quantity: self, unit: .hectoliters)
    }
    var kiloliters: Measure {
        return Measure(quantity: self, unit: .kiloliters)
    }
    var megaliters: Measure {
        return Measure(quantity: self, unit: .megaliters)
    }
    var gigaliters: Measure {
        return Measure(quantity: self, unit: .gigaliters)
    }
    var teraliters: Measure {
        return Measure(quantity: self, unit: .teraliters)
    }
    var petaliters: Measure {
        return Measure(quantity: self, unit: .petaliters)
    }
    var exaliters: Measure {
        return Measure(quantity: self, unit: .exaliters)
    }
    var zettaliters: Measure {
        return Measure(quantity: self, unit: .zettaliters)
    }
    var yottaliters: Measure {
        return Measure(quantity: self, unit: .yottaliters)
    }
    var cubicInches: Measure {
        return Measure(quantity: self, unit: .cubicInches)
    }
    var cubicFeet: Measure {
        return Measure(quantity: self, unit: .cubicFeet)
    }
    var cubicYards: Measure {
        return Measure(quantity: self, unit: .cubicYards)
    }
    var cubicMiles: Measure {
        return Measure(quantity: self, unit: .cubicMiles)
    }
    func minims(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .minims(system))
    }
    func fluidScruples(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .fluidScruples(system))
    }
    var teaspoons: Measure {
        return Measure(quantity: self, unit: .teaspoons)
    }
    var tablespoons: Measure {
        return Measure(quantity: self, unit: .tablespoons)
    }
    var cups: Measure {
        return Measure(quantity: self, unit: .cups)
    }
    func fluidOunces(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .fluidOunces(system))
    }
    func fluidDrams(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .fluidDrams(system))
    }
    func fluidDrachms(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .fluidDrachms(system))
    }
    func gills(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .gills(system))
    }
    func pints(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .pints(system))
    }
    func quarts(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .quarts(system))
    }
    func gallons(system: MeasureSystem) -> Measure {
    return Measure(quantity: self, unit: .gallons(system))
    }
    var cords: Measure {
        return Measure(quantity: self, unit: .cords)
    }
    var dryPints: Measure {
        return Measure(quantity: self, unit: .dryPints)
    }
    var dryQuarts: Measure {
        return Measure(quantity: self, unit: .dryQuarts)
    }
    func pecks(system: MeasureSystem) -> Measure {
        return Measure(quantity: self, unit: .pecks(system))
    }
    func bushels(system: MeasureSystem) -> Measure {
        return Measure(quantity: self, unit: .bushels(system))
    }
    var celsius: Measure {
        return Measure(quantity: self, unit: .celsius)
    }
    var fahrenheit: Measure {
        return Measure(quantity: self, unit: .fahrenheit)
    }
    var kelvin: Measure {
        return Measure(quantity: self, unit: .kelvin)
    }

}
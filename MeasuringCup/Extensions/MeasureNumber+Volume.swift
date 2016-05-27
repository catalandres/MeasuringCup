//
//  MeasureNumber+Volume.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–19.
//  Copyright © 2016 Ayre. All rights reserved.
//


extension MeasureNumber {
    var cubicYoctometers: Volume {
        return Volume(quantity: self, unit: .cubicYoctometers)
    }
    var cubicZeptometers: Volume {
        return Volume(quantity: self, unit: .cubicZeptometers)
    }
    var cubicAttometers: Volume {
        return Volume(quantity: self, unit: .cubicAttometers)
    }
    var cubicFemtometers: Volume {
        return Volume(quantity: self, unit: .cubicFemtometers)
    }
    var cubicPicometers: Volume {
        return Volume(quantity: self, unit: .cubicPicometers)
    }
    var cubicNanometers: Volume {
        return Volume(quantity: self, unit: .cubicNanometers)
    }
    var cubicMicrometers: Volume {
        return Volume(quantity: self, unit: .cubicMicrometers)
    }
    var cubicMillimeters: Volume {
        return Volume(quantity: self, unit: .cubicMillimeters)
    }
    var cubicCentimeters: Volume {
        return Volume(quantity: self, unit: .cubicCentimeters)
    }
    var cubicDecimeters: Volume {
        return Volume(quantity: self, unit: .cubicDecimeters)
    }
    var cubicMeters: Volume {
        return Volume(quantity: self, unit: .cubicMeters)
    }
    var cubicDecameters: Volume {
        return Volume(quantity: self, unit: .cubicDecameters)
    }
    var cubicHectometers: Volume {
        return Volume(quantity: self, unit: .cubicHectometers)
    }
    var cubicKilometers: Volume {
        return Volume(quantity: self, unit: .cubicKilometers)
    }
    var cubicMegameters: Volume {
        return Volume(quantity: self, unit: .cubicMegameters)
    }
    var cubicGigameters: Volume {
        return Volume(quantity: self, unit: .cubicGigameters)
    }
    var cubicTerameters: Volume {
        return Volume(quantity: self, unit: .cubicTerameters)
    }
    var cubicPetameters: Volume {
        return Volume(quantity: self, unit: .cubicPetameters)
    }
    var cubicExameters: Volume {
        return Volume(quantity: self, unit: .cubicExameters)
    }
    var cubicZettameters: Volume {
        return Volume(quantity: self, unit: .cubicZettameters)
    }
    var cubicYottameters: Volume {
        return Volume(quantity: self, unit: .cubicYottameters)
    }
    var yoctoliters: Volume {
        return Volume(quantity: self, unit: .yoctoliters)
    }
    var zeptoliters: Volume {
        return Volume(quantity: self, unit: .zeptoliters)
    }
    var attoliters: Volume {
        return Volume(quantity: self, unit: .attoliters)
    }
    var femtoliters: Volume {
        return Volume(quantity: self, unit: .femtoliters)
    }
    var picoliters: Volume {
        return Volume(quantity: self, unit: .picoliters)
    }
    var nanoliters: Volume {
        return Volume(quantity: self, unit: .nanoliters)
    }
    var microliters: Volume {
        return Volume(quantity: self, unit: .microliters)
    }
    var milliliters: Volume {
        return Volume(quantity: self, unit: .milliliters)
    }
    var centiliters: Volume {
        return Volume(quantity: self, unit: .centiliters)
    }
    var deciliters: Volume {
        return Volume(quantity: self, unit: .deciliters)
    }
    var liters: Volume {
        return Volume(quantity: self, unit: .liters)
    }
    var decaliters: Volume {
        return Volume(quantity: self, unit: .decaliters)
    }
    var hectoliters: Volume {
        return Volume(quantity: self, unit: .hectoliters)
    }
    var kiloliters: Volume {
        return Volume(quantity: self, unit: .kiloliters)
    }
    var megaliters: Volume {
        return Volume(quantity: self, unit: .megaliters)
    }
    var gigaliters: Volume {
        return Volume(quantity: self, unit: .gigaliters)
    }
    var teraliters: Volume {
        return Volume(quantity: self, unit: .teraliters)
    }
    var petaliters: Volume {
        return Volume(quantity: self, unit: .petaliters)
    }
    var exaliters: Volume {
        return Volume(quantity: self, unit: .exaliters)
    }
    var zettaliters: Volume {
        return Volume(quantity: self, unit: .zettaliters)
    }
    var yottaliters: Volume {
        return Volume(quantity: self, unit: .yottaliters)
    }
    var cubicInches: Volume {
        return Volume(quantity: self, unit: .cubicInches)
    }
    var cubicFeet: Volume {
        return Volume(quantity: self, unit: .cubicFeet)
    }
    var cubicYards: Volume {
        return Volume(quantity: self, unit: .cubicYards)
    }
    var cubicMiles: Volume {
        return Volume(quantity: self, unit: .cubicMiles)
    }
    func minims(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .minims(system))
    }
    func fluidScruples(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .fluidScruples(system))
    }
    var teaspoons: Volume {
        return Volume(quantity: self, unit: .teaspoons)
    }
    var tablespoons: Volume {
        return Volume(quantity: self, unit: .tablespoons)
    }
    var cups: Volume {
        return Volume(quantity: self, unit: .cups)
    }
    func fluidOunces(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .fluidOunces(system))
    }
    func fluidDrams(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .fluidDrams(system))
    }
    func fluidDrachms(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .fluidDrachms(system))
    }
    func gills(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .gills(system))
    }
    func pints(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .pints(system))
    }
    func quarts(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .quarts(system))
    }
    func gallons(system: Volume.Unit.System) -> Volume {
    return Volume(quantity: self, unit: .gallons(system))
    }
    var cords: Volume {
        return Volume(quantity: self, unit: .cords)
    }
    var dryPints: Volume {
        return Volume(quantity: self, unit: .dryPints)
    }
    var dryQuarts: Volume {
        return Volume(quantity: self, unit: .dryQuarts)
    }
    func pecks(system: Volume.Unit.System) -> Volume {
        return Volume(quantity: self, unit: .pecks(system))
    }
    func bushels(system: Volume.Unit.System) -> Volume {
        return Volume(quantity: self, unit: .bushels(system))
    }
}
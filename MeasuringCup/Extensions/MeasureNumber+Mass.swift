//
//  MeasureNumber+Mass.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–19.
//  Copyright © 2016 Ayre. All rights reserved.
//


extension MeasureNumber {
    var yoctograms: Mass {
        return Mass(quantity: self, unit: .yoctograms)
    }
    var zeptograms: Mass {
        return Mass(quantity: self, unit: .zeptograms)
    }
    var attograms: Mass {
        return Mass(quantity: self, unit: .attograms)
    }
    var femtograms: Mass {
        return Mass(quantity: self, unit: .femtograms)
    }
    var picograms: Mass {
        return Mass(quantity: self, unit: .picograms)
    }
    var nanograms: Mass {
        return Mass(quantity: self, unit: .nanograms)
    }
    var micrograms: Mass {
        return Mass(quantity: self, unit: .micrograms)
    }
    var milligrams: Mass {
        return Mass(quantity: self, unit: .milligrams)
    }
    var centigrams: Mass {
        return Mass(quantity: self, unit: .centigrams)
    }
    var decigrams: Mass {
        return Mass(quantity: self, unit: .decigrams)
    }
    var grams: Mass {
        return Mass(quantity: self, unit: .grams)
    }
    var decagrams: Mass {
        return Mass(quantity: self, unit: .decagrams)
    }
    var hectograms: Mass {
        return Mass(quantity: self, unit: .hectograms)
    }
    var kilograms: Mass {
        return Mass(quantity: self, unit: .kilograms)
    }
    var megagrams: Mass {
        return Mass(quantity: self, unit: .megagrams)
    }
    var gigagrams: Mass {
        return Mass(quantity: self, unit: .gigagrams)
    }
    var teragrams: Mass {
        return Mass(quantity: self, unit: .teragrams)
    }
    var petagrams: Mass {
        return Mass(quantity: self, unit: .petagrams)
    }
    var exagrams: Mass {
        return Mass(quantity: self, unit: .exagrams)
    }
    var zettagrams: Mass {
        return Mass(quantity: self, unit: .zettagrams)
    }
    var yottagrams: Mass {
        return Mass(quantity: self, unit: .yottagrams)
    }
    var metricTons: Mass {
        return Mass(quantity: self, unit: .metricTons)
    }
    var carats: Mass {
        return Mass(quantity: self, unit: .carats)
    }
    var grains: Mass {
        return Mass(quantity: self, unit: .grains)
    }
    var drams: Mass {
        return Mass(quantity: self, unit: .drams)
    }
    var ounces: Mass {
        return Mass(quantity: self, unit: .ounces)
    }
    var pounds: Mass {
        return Mass(quantity: self, unit: .pounds)
    }
    func quarters(system: Mass.Unit.System) -> Mass{
    return Mass(quantity: self, unit: .quarters(system))
    }
    func hundredweights(system: Mass.Unit.System) -> Mass{
    return Mass(quantity: self, unit: .hundredweights(system))
    }
    var longHundredweights: Mass {
        return Mass(quantity: self, unit: .longHundredweights)
    }
    func tons(system: Mass.Unit.System) -> Mass{
    return Mass(quantity: self, unit: .tons(system))
    }
    var longTons: Mass {
        return Mass(quantity: self, unit: .longTons)
    }
    var stone: Mass {
        return Mass(quantity: self, unit: .stone)
    }
    var pennyweights: Mass {
        return Mass(quantity: self, unit: .pennyweights)
    }
    var ouncesTroy: Mass {
        return Mass(quantity: self, unit: .ouncesTroy)
    }
    var poundsTroy: Mass {
        return Mass(quantity: self, unit: .poundsTroy)
    }
    var scruples: Mass {
        return Mass(quantity: self, unit: .scruples)
    }
    var dramsApothecaries: Mass {
        return Mass(quantity: self, unit: .dramsApothecaries)
    }
    var ouncesApothecaries: Mass {
        return Mass(quantity: self, unit: .ouncesApothecaries)
    }
    var poundsApothecaries: Mass {
        return Mass(quantity: self, unit: .poundsApothecaries)
    }
}
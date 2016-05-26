//
//  MeasureNumber+Length.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–19.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

extension MeasureNumber {
    // MARK: - IS units of length
    var yoctometers: Length {
        return Length(quantity: self, unit: .yoctometers)
    }
    var zeptometers: Length {
        return Length(quantity: self, unit: .zeptometers)
    }
    var attometers: Length {
        return Length(quantity: self, unit: .attometers)
    }
    var femtometers: Length {
        return Length(quantity: self, unit: .femtometers)
    }
    var picometers: Length {
        return Length(quantity: self, unit: .picometers)
    }
    var nanometers: Length {
        return Length(quantity: self, unit: .nanometers)
    }
    var micrometers: Length {
        return Length(quantity: self, unit: .micrometers)
    }
    var millimeters: Length {
        return Length(quantity: self, unit: .millimeters)
    }
    var centimeters: Length {
        return Length(quantity: self, unit: .centimeters)
    }
    var decimeters: Length {
        return Length(quantity: self, unit: .decimeters)
    }
    var meters: Length {
        return Length(quantity: self, unit: .meters)
    }
    var decameters: Length {
        return Length(quantity: self, unit: .decameters)
    }
    var hectometers: Length {
        return Length(quantity: self, unit: .hectometers)
    }
    var kilometers: Length {
        return Length(quantity: self, unit: .kilometers)
    }
    var megameters: Length {
        return Length(quantity: self, unit: .megameters)
    }
    var gigameters: Length {
        return Length(quantity: self, unit: .gigameters)
    }
    var terameters: Length {
        return Length(quantity: self, unit: .terameters)
    }
    var petameters: Length {
        return Length(quantity: self, unit: .petameters)
    }
    var exameters: Length {
        return Length(quantity: self, unit: .exameters)
    }
    var zettameters: Length {
        return Length(quantity: self, unit: .zettameters)
    }
    var yottameters: Length {
        return Length(quantity: self, unit: .yottameters)
    }
    // MARK: - Non-IS units of length
    var fermis: Length {
        return Length(quantity: self, unit: .fermis)
    }
    var ångströms: Length {
        return Length(quantity: self, unit: .ångströms)
    }
    var microns: Length {
        return Length(quantity: self, unit: .microns)
    }
    // MARK: - Customary units of length
    var thou: Length {
        return Length(quantity: self, unit: .thou)
    }
    var mils: Length {
        return Length(quantity: self, unit: .mils)
    }
    var inches: Length {
        return Length(quantity: self, unit: .inches)
    }
    var feet: Length {
        return Length(quantity: self, unit: .feet)
    }
    var yards: Length {
        return Length(quantity: self, unit: .yards)
    }
    var miles: Length {
        return Length(quantity: self, unit: .miles)
    }
    var leagues: Length {
        return Length(quantity: self, unit: .leagues)
    }
    // MARK: - Survey units of length
    var surveyLinks: Length {
        return Length(quantity: self, unit: .surveyLinks)
    }
    var surveyFeet: Length {
        return Length(quantity: self, unit: .surveyFeet)
    }
    var surveyRods: Length {
        return Length(quantity: self, unit: .surveyRods)
    }
    var surveyChains: Length {
        return Length(quantity: self, unit: .surveyChains)
    }
    var surveyMiles: Length {
        return Length(quantity: self, unit: .surveyMiles)
    }
    var surveyFurlongs: Length {
        return Length(quantity: self, unit: .surveyFurlongs)
    }

    // MARK: - Nautical units of length
    var fathoms: Length {
        return Length(quantity: self, unit: .fathoms)
    }
    var nauticalMiles: Length {
        return Length(quantity: self, unit: .nauticalMiles)
    }
}
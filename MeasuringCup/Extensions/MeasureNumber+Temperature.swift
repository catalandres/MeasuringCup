//
//  MeasureNumber+Temperature.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–19.
//  Copyright © 2016 Ayre. All rights reserved.
//


extension MeasureNumber {
    var celsius: Temperature {
        return Temperature(quantity: self, unit: .celsius)
    }
    var fahrenheit: Temperature {
        return Temperature(quantity: self, unit: .fahrenheit)
    }
    var kelvin: Temperature {
        return Temperature(quantity: self, unit: .kelvin)
    }
}
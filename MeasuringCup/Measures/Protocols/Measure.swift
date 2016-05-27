//
//  Measure.swift
//  MeasuringCup
//  Created by Andrés Catalán on 2016–05–13.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Swift

public protocol Measure: Comparable, Hashable, CustomStringConvertible {
    
    associatedtype U: UnitType
    
    var quantity: Double { get }
    var unit: U { get }
    
    init(quantity: MeasureNumber, unit: U)
}
//
//  ConvertibleMeasure+Summable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public func +<T: ConvertibleMeasure>(lhs: T, rhs: T) -> T {
    guard lhs.unit != rhs.unit else {
        return T(quantity: lhs.quantity + rhs.quantity, unit: lhs.unit)
    }
    let baseUnit = lhs.unit.dynamicType.baseUnit
    let leftBase = lhs.baseQuantity
    let rightBase = rhs.baseQuantity
    return T(quantity: leftBase + rightBase, unit: baseUnit)
}

public func -<T: ConvertibleMeasure>(lhs: T, rhs: T) -> T {
    return lhs + (-1) * rhs
}
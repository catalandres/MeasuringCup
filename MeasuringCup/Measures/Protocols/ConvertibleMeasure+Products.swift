//
//  ConvertibleMeasure+Products.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public func *(lhs: Length, rhs: Length) -> Area {
    let leftBase = lhs.baseQuantity
    let rightBase = rhs.baseQuantity
    return Area(quantity: leftBase * rightBase, unit: .squareMeters)
}

public func *(lhs: Area, rhs: Length) -> Volume {
    let leftBase = lhs.baseQuantity
    let rightBase = rhs.baseQuantity
    return Volume(quantity: leftBase * rightBase, unit: .cubicMeters).to(.liters)
}

public func *(lhs: Length, rhs: Area) -> Volume {
    let leftBase = lhs.baseQuantity
    let rightBase = rhs.baseQuantity
    return Volume(quantity: leftBase * rightBase, unit: .cubicMeters).to(.liters)
}

public func /(lhs: Volume, rhs: Length) -> Area {
    let leftBase = lhs.baseQuantity
    let rightBase = rhs.baseQuantity
    return Area(quantity: leftBase * 1_000 / rightBase, unit: .squareMeters)
}

public func /(lhs: Volume, rhs: Area) -> Length {
    let leftBase = lhs.baseQuantity
    let rightBase = rhs.baseQuantity
    return Length(quantity: leftBase * 1_000 / rightBase, unit: .meters)
}

public func /(lhs: Area, rhs: Length) -> Length {
    let leftBase = lhs.baseQuantity
    let rightBase = rhs.baseQuantity
    return Length(quantity: leftBase / rightBase, unit: .meters)
}
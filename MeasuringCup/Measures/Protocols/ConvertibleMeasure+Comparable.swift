//
//  ConvertibleMeasure+Comparable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public func ==<T: ConvertibleMeasure>(lhs: T, rhs: T) -> Bool {
    let epsilon = max(Tolerance.absolute, Tolerance.relative * max(abs(lhs.baseQuantity), abs(rhs.baseQuantity)))
    return abs(lhs.baseQuantity - rhs.baseQuantity) <= epsilon
}

public func !=<T: ConvertibleMeasure>(lhs: T, rhs: T) -> Bool {
    let epsilon = max(Tolerance.absolute, Tolerance.relative * max(abs(lhs.baseQuantity), abs(rhs.baseQuantity)))
    return abs(lhs.baseQuantity - rhs.baseQuantity) > epsilon
}

public func <<T: ConvertibleMeasure>(lhs: T, rhs: T) -> Bool {
    let epsilon = max(Tolerance.absolute, Tolerance.relative * max(abs(lhs.baseQuantity), abs(rhs.baseQuantity)))
    return lhs.baseQuantity - rhs.baseQuantity < epsilon && abs(lhs.baseQuantity - rhs.baseQuantity) > epsilon
}

public func <=<T: ConvertibleMeasure>(lhs: T, rhs: T) -> Bool {
    let epsilon = max(Tolerance.absolute, Tolerance.relative * max(abs(lhs.baseQuantity), abs(rhs.baseQuantity)))
    return lhs.baseQuantity - rhs.baseQuantity < epsilon
}

public func ><T: ConvertibleMeasure>(lhs: T, rhs: T) -> Bool {
    let epsilon = max(Tolerance.absolute, Tolerance.relative * max(abs(lhs.baseQuantity), abs(rhs.baseQuantity)))
    return rhs.baseQuantity - lhs.baseQuantity < epsilon && abs(lhs.baseQuantity - rhs.baseQuantity) > epsilon
}

public func >=<T: ConvertibleMeasure>(lhs: T, rhs: T) -> Bool {
    let epsilon = max(Tolerance.absolute, Tolerance.relative * max(abs(lhs.baseQuantity), abs(rhs.baseQuantity)))
    return rhs.baseQuantity - lhs.baseQuantity < epsilon
}
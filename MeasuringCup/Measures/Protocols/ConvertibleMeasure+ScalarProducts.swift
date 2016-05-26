//
//  Measure+Scalable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public func *<T: ConvertibleMeasure>(lhs: T, rhs: Double) -> T {
    return T(quantity: lhs.quantity * rhs, unit: lhs.unit)
}
public func *<T: ConvertibleMeasure>(lhs: T, rhs: Float) -> T {
    return T(quantity: lhs.quantity * Double(rhs), unit: lhs.unit)
}
public func *<T: ConvertibleMeasure>(lhs: T, rhs: Int) -> T {
    return T(quantity: lhs.quantity * Double(rhs), unit: lhs.unit)
}
public func *<T: ConvertibleMeasure>(lhs: Double, rhs: T) -> T {
    return rhs * lhs
}
public func *<T: ConvertibleMeasure>(lhs: Float, rhs: T) -> T {
    return rhs * lhs
}
public func *<T: ConvertibleMeasure>(lhs: Int, rhs: T) -> T {
    return rhs * lhs
}

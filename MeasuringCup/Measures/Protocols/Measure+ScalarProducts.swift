//
//  Measure+Scalable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public func *<T: Measure>(lhs: T, rhs: Double) -> T {
    return T(quantity: lhs.quantity * rhs, unit: lhs.unit)
}
public func *<T: Measure>(lhs: T, rhs: Float) -> T {
    return T(quantity: lhs.quantity * Double(rhs), unit: lhs.unit)
}
public func *<T: Measure>(lhs: T, rhs: Int) -> T {
    return T(quantity: lhs.quantity * Double(rhs), unit: lhs.unit)
}

public func *<T: Measure>(lhs: Double, rhs: T) -> T {
    return rhs * lhs
}
public func *<T: Measure>(lhs: Float, rhs: T) -> T {
    return rhs * lhs
}
public func *<T: Measure>(lhs: Int, rhs: T) -> T {
    return rhs * lhs
}

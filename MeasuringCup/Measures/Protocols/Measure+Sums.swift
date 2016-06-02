//
//  Measure+Summable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public func +<T: Measure>(lhs: T, rhs: T) -> T? {
    guard lhs.unit == rhs.unit else {
        return nil
    }
    return T(quantity: lhs.quantity + rhs.quantity, unit: lhs.unit)
}

public func -<T: Measure>(lhs: T, rhs: T) -> T? {
    print(lhs)
    print((-1) * rhs)
    print(lhs + (-1) * rhs)
    return lhs + (-1) * rhs
}

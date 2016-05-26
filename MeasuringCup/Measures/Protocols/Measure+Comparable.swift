//
//  Measure+Comparable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public func ==<T: Measure>(lhs: T, rhs: T) -> Bool {
    return lhs.unit == rhs.unit && lhs.quantity == rhs.quantity
}

public func <<T: Measure>(lhs: T, rhs: T) -> Bool {
    return lhs.unit == rhs.unit && lhs.quantity < rhs.quantity
}

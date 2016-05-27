//
//  LengthUnit.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–14.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

extension UnitType {
    public var hashValue: Int {
        return self.symbol.hashValue
    }
}

public func ==<T: UnitType>(lhs: T, rhs: T) -> Bool {
    return lhs.symbol == rhs.symbol
}

public func !=<T: UnitType>(lhs: T, rhs: T) -> Bool {
    return lhs.symbol != rhs.symbol
}
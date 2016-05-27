//
//  LengthUnit.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–14.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

extension ConvertibleUnitType {
    public var hashValue: Int {
        return (self.symbol + String(self.factor)).hashValue
    }
}

public func ==<T: ConvertibleUnitType>(lhs: T, rhs: T) -> Bool {
    return lhs.symbol == rhs.symbol && lhs.factor == rhs.factor
}

public func !=<T: ConvertibleUnitType>(lhs: T, rhs: T) -> Bool {
    return lhs.symbol != rhs.symbol || lhs.factor != rhs.factor
}
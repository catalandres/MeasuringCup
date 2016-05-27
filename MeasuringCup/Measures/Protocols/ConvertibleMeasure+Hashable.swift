//
//  ConvertibleMeasure+Hashable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

extension ConvertibleMeasure {
    public var hashValue: Int {
        let baseQuantity = self.baseQuantity
        let baseUnit = self.unit.dynamicType.baseUnit
        return (String(format: "%.8f", baseQuantity) + baseUnit.symbol).hashValue
    }
}

//
//  Measure.swift
//  MeasuringCup
//  Created by Andrés Catalán on 2016–05–13.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Swift

public protocol ConvertibleMeasure: Measure {
    
    associatedtype U: ConvertibleUnitType
    
    var baseQuantity: Double { get }
    
    init(quantity: MeasureNumber, unit: U)
    func to(toUnit: U) -> Self
}

extension ConvertibleMeasure {
    
    public var baseQuantity: Double {
        return to(unit.dynamicType.baseUnit).quantity
    }
    
    public func to(toUnit: U) -> Self {
        return Self(quantity: (quantity + (unit.shift ?? 0)) * unit.factor / toUnit.factor + (toUnit.shift ?? 0), unit: toUnit)
    }

}

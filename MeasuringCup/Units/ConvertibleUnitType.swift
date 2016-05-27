//
//  LengthUnit.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–14.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public protocol ConvertibleUnitType: UnitType {
    
    static var baseUnit: Self { get }
    var shift: Double? { get }
    var factor: Double { get }
    
}
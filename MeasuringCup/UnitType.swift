//
//  UnitType.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–15.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public enum UnitType {
    case length
    case mass
    case area
    case volume
    
    public var baseUnit: Unit? {
        switch self {
        case .length:
            return .meters
        case .mass:
            return .kilograms
        case .area:
            return .squareMeters
        case .volume:
            return .liters
        }
    }
}
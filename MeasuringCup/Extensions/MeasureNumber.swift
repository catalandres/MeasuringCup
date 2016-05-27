//
//  MeasureNumber.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–19.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public protocol MeasureNumber {}

extension Int: MeasureNumber {}
extension Float: MeasureNumber {}
extension Double: MeasureNumber {}

extension Double {
    init(_ value: MeasureNumber) {
        switch value {
        case is Int:
            self = Double(value as! Int)
        case is Float:
            self = Double(value as! Float)
        case is Double:
            self = value as! Double
        default:
            self = 0
        }
    }
}
//
//  Measure+CustomStringConvertible.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

extension ConvertibleMeasure {
    
    public var description: String {
        if let quantityString = MeasureFormatter.service.stringFromNumber(self.quantity) {
            return "\(quantityString) \(self.unit.symbol)"
        } else {
            return ""
        }
        
    }
}

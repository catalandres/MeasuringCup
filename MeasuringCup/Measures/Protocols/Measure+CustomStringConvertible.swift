//
//  Measure+CustomStringConvertible.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

extension Measure {
    public var description: String {
        let quantityString: String
        if self.quantity % 1 == 0 {
            quantityString = String(Int(self.quantity))
        } else {
            quantityString = String(format: "%.2f", self.quantity)
        }
        return "\(quantityString) \(self.unit.symbol)"
    }
}

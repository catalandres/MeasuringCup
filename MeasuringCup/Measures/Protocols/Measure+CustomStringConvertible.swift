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
        if let bundle = NSBundle(identifier: "com.ayre.MeasuringCup") {
            return String.localizedStringWithFormat(NSLocalizedString(self.unit.description, tableName: nil, bundle: bundle , value: "", comment: ""), self.quantity)
        } else {
            return ""
        }
    }
}
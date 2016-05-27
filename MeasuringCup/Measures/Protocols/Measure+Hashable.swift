//
//  Measure+Hashable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

extension Measure {
    public var hashValue: Int {
        return self.description.hashValue
    }
}


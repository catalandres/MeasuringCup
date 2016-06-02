//
//  LengthUnit.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–14.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public protocol UnitType: Hashable {
    
    var symbol: String { get }
    var description: String { get }
    
}
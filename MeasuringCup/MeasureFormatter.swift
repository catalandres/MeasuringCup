//
//  MeasureFormatter.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–06–02.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

/// `MeasureFormatter` is defined as a singleton because initializing NSxFormatters is very expensive
class MeasureFormatter: NSNumberFormatter {
    
    // MARK: - Singleton
    static let service = MeasureFormatter()
    
    private override init() {
        super.init()
        self.minimumFractionDigits = 0
        self.maximumFractionDigits = 2
        self.numberStyle = .DecimalStyle
    }
    
    internal required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
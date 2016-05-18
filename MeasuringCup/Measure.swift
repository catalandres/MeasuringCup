//
//  Measure.swift
//  MeasuringCup
//  Created by Andrés Catalán on 2016–05–13.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Swift

public struct Measure: Comparable, Hashable, Summable {
    
    static var absoluteTolerance: Double = pow(10, -30)
    static var relativeTolerance: Double = pow(10, -15)
    
    let quantity: Decimal
    let unit: Unit

    public var baseQuantity: Decimal? {
        guard let factor = self.unit.factor else {
            return nil
        }
        guard let baseFactor = self.unit.type.baseUnit?.factor else {
            return nil
        }
        return self.quantity * factor / baseFactor
    }
    
    public func to(unit: Unit) -> Measure? {
        guard let factorFrom = self.unit.factor else {
            return nil
        }
        guard let factorTo = unit.factor else {
            return nil
        }
        guard self.unit.type == unit.type else {
            return nil
        }
        return Measure(quantity: quantity * factorFrom / factorTo, unit: unit)
    }
    
    public init(quantity: Number, unit: Unit) {
        self.quantity = Decimal(quantity)
        self.unit = unit
    }
    
}

// MARK: - CustomStringConvertible

extension Measure: CustomStringConvertible {
    public var description: String {
        let quantityString: String
        if self.quantity.number % 1 == 0 {
            quantityString = String(self.quantity)
        } else {
            quantityString = String(format: "%.2f", self.quantity.number)
        }
        return "\(quantityString) \(self.unit.symbol)"
    }
}

// MARK: - Comparable

public func ==(lhs: Measure, rhs: Measure) -> Bool {
    print("\(lhs) =? \(rhs)")
    guard lhs.unit.type == rhs.unit.type else {
        return false
    }
    guard let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity else {
        print("one of the base quantities is not set")
        return lhs.unit == rhs.unit && lhs.quantity == rhs.quantity
    }
    print(">>> \(leftBase) vs \(rightBase)")
    return abs((leftBase - rightBase).number) <= max(Measure.absoluteTolerance, Measure.relativeTolerance * max(abs(leftBase.number), abs(rightBase.number)))
}

public func <(lhs: Measure, rhs: Measure) -> Bool {
    guard lhs.unit.type == rhs.unit.type else {
        return false
    }
    guard let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity else {
        return lhs.unit == rhs.unit && lhs.quantity < rhs.quantity
    }
    return leftBase < rightBase
}

// MARK: - Hashable

extension Measure {
    public var hashValue: Int {
        guard let baseQuantity = self.baseQuantity, baseUnit = self.unit.type.baseUnit else {
            return self.description.hashValue
        }
        return (String(baseQuantity) + baseUnit.symbol).hashValue
    }
}

// MARK: - Scalable

public func *(lhs: Measure, rhs: Double) -> Measure {
    return Measure(quantity: lhs.quantity * rhs, unit: lhs.unit)
}
public func *(lhs: Measure, rhs: Float) -> Measure {
    return Measure(quantity: lhs.quantity * Double(rhs), unit: lhs.unit)
}
public func *(lhs: Measure, rhs: Int) -> Measure {
    return Measure(quantity: lhs.quantity * Double(rhs), unit: lhs.unit)
}

// MARK: - Summable

public func +(lhs: Measure, rhs: Measure) -> Measure? {
    guard lhs.unit.type == rhs.unit.type else {
        return nil
    }
    guard let baseUnit = lhs.unit.type.baseUnit else {
        return nil
    }
    guard lhs.unit != rhs.unit else {
        return Measure(quantity: lhs.quantity + rhs.quantity, unit: lhs.unit)
    }
    guard let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity else {
        return nil
    }
    return Measure(quantity: leftBase + rightBase, unit: baseUnit)
}

// MARK: - Product

public func *(lhs: Measure, rhs: Measure) -> Measure? {
    switch (lhs.unit.type, rhs.unit.type) {
    case (.length, .length):
        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
            return Measure(quantity: leftBase * rightBase, unit: .squareMeters)
        }
    case (.area, .length):
        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
            return Measure(quantity: leftBase * rightBase, unit: .cubicMeters).to(.liters)
        }
    case (.length, .area):
        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
            return Measure(quantity: leftBase * rightBase, unit: .cubicMeters).to(.liters)
        }
    default:
        break
    }
    return nil
}

public func /(lhs: Measure, rhs: Measure) -> Measure? {
    switch (lhs.unit.type, rhs.unit.type) {
    case (.volume, .length):
        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
            return Measure(quantity: leftBase * 1_000 / rightBase, unit: .squareMeters)
        }
    case (.volume, .area):
        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
            return Measure(quantity: leftBase * 1_000 / rightBase, unit: .meters)
        }
    case (.area, .length):
        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
            return Measure(quantity: leftBase / rightBase, unit: .meters)
        }
    default:
        break
    }
    return nil
}

//
//  Decimal.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–18.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Decimal: Comparable {
    internal let _decimalNumber: NSDecimalNumber
    
    init(_ number: Number) {
        
        switch number {
        case is Int:
            self._decimalNumber = NSDecimalNumber(integer: number as! Int)
        case is Float:
            self._decimalNumber = NSDecimalNumber(float: number as! Float)
        case is Double:
            self._decimalNumber = NSDecimalNumber(double: number as! Double)
        case is Decimal:
            self._decimalNumber = (number as! Decimal)._decimalNumber
        default:
            self._decimalNumber = NSDecimalNumber()
        }
    }
    
    init(tenTo power: Int16) {
        self._decimalNumber = NSDecimalNumber(integer: 1).decimalNumberByMultiplyingByPowerOf10(power)
    }
    
    private init(_ decimalNumber: NSDecimalNumber) {
        self._decimalNumber = decimalNumber
    }
    
    var number: Double {
        return Double(_decimalNumber.floatValue)
    }
}

// MARK: - CustomStringConvertible

extension Decimal: CustomStringConvertible {
    public var description: String {
        return _decimalNumber.descriptionWithLocale(nil)
    }
}

// MARK: - Comparable
public func ==(lhs: Decimal, rhs: Decimal) -> Bool {
    return lhs._decimalNumber == rhs._decimalNumber
}
public func <(lhs: Decimal, rhs: Decimal) -> Bool {
    return lhs._decimalNumber.compare(rhs._decimalNumber) == .OrderedAscending
}

// MARK: - Addition
public func +(lhs: Decimal, rhs: Decimal) -> Decimal {
    return Decimal(Decimal(lhs)._decimalNumber.decimalNumberByAdding(rhs._decimalNumber))
}
public func +<T: Number>(lhs: T, rhs: Decimal) -> Decimal {
    return Decimal(Decimal(lhs)._decimalNumber.decimalNumberByAdding(rhs._decimalNumber))
}
public func +<T: Number>(lhs: Decimal, rhs: T) -> Decimal {
    return Decimal(lhs._decimalNumber.decimalNumberByAdding(Decimal(rhs)._decimalNumber))
}

// MARK: - Subtraction
public func -(lhs: Decimal, rhs: Decimal) -> Decimal {
    return Decimal(lhs._decimalNumber.decimalNumberBySubtracting(rhs._decimalNumber))
}
public func -<T: Number>(lhs: T, rhs: Decimal) -> Decimal {
    return Decimal(Decimal(lhs)._decimalNumber.decimalNumberBySubtracting(rhs._decimalNumber))
}
public func -<T: Number>(lhs: Decimal, rhs: T) -> Decimal {
    return Decimal(lhs._decimalNumber.decimalNumberBySubtracting(Decimal(rhs)._decimalNumber))
}

// MARK: - Multiplication
public func *(lhs: Decimal, rhs: Decimal) -> Decimal {
    return Decimal(Decimal(lhs)._decimalNumber.decimalNumberByMultiplyingBy(rhs._decimalNumber))
}
public func *<T: Number>(lhs: T, rhs: Decimal) -> Decimal {
    return Decimal(Decimal(lhs)._decimalNumber.decimalNumberByMultiplyingBy(rhs._decimalNumber))
}
public func *<T: Number>(lhs: Decimal, rhs: T) -> Decimal {
    return Decimal(lhs._decimalNumber.decimalNumberByMultiplyingBy(Decimal(rhs)._decimalNumber))
}

// MARK: - Division
public func /(lhs: Decimal, rhs: Decimal) -> Decimal {
    return Decimal(lhs._decimalNumber.decimalNumberByDividingBy(rhs._decimalNumber))
}
public func /<T: Number>(lhs: T, rhs: Decimal) -> Decimal {
    return Decimal(Decimal(lhs)._decimalNumber.decimalNumberByDividingBy(rhs._decimalNumber))
}
public func /<T: Number>(lhs: Decimal, rhs: T) -> Decimal {
    return Decimal(lhs._decimalNumber.decimalNumberByDividingBy(Decimal(rhs)._decimalNumber))
}

// MARK: - Exponentiation
public func ^(lhs: Decimal, rhs: Int) -> Decimal {
    return Decimal(lhs._decimalNumber.decimalNumberByRaisingToPower(rhs))
}



////
////  Measure.swift
////  MeasuringCup
////  Created by Andrés Catalán on 2016–05–13.
////  Copyright © 2016 Ayre. All rights reserved.
////
//
//import Swift
//
//    // MARK: - Initializers
//    
//
//
//// MARK: - Summable
//
//public func +(lhs: Measure, rhs: Measure) -> Measure? {
//    guard let baseUnit = lhs.unit.type.baseUnit else {
//        return nil
//    }
//    guard lhs.unit != rhs.unit else {
//        return Measure(quantity: lhs.quantity + rhs.quantity, unit: lhs.unit)
//    }
//    guard let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity else {
//        return nil
//    }
//    return Measure(quantity: leftBase + rightBase, unit: baseUnit)
//}
//
//// MARK: - Product
//
//public func *(lhs: Measure, rhs: Measure) -> Measure? {
//    switch (lhs.unit.type, rhs.unit.type) {
//    case (.length, .length):
//        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
//            return Measure(quantity: leftBase * rightBase, unit: .squareMeters)
//        }
//    case (.area, .length):
//        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
//            return Measure(quantity: leftBase * rightBase, unit: .cubicMeters).to(.liters)
//        }
//    case (.length, .area):
//        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
//            return Measure(quantity: leftBase * rightBase, unit: .cubicMeters).to(.liters)
//        }
//    default:
//        break
//    }
//    return nil
//}
//
//public func /(lhs: Measure, rhs: Measure) -> Measure? {
//    switch (lhs.unit.type, rhs.unit.type) {
//    case (.volume, .length):
//        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
//            return Measure(quantity: leftBase * 1_000 / rightBase, unit: .squareMeters)
//        }
//    case (.volume, .area):
//        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
//            return Measure(quantity: leftBase * 1_000 / rightBase, unit: .meters)
//        }
//    case (.area, .length):
//        if let leftBase = lhs.baseQuantity, rightBase = rhs.baseQuantity {
//            return Measure(quantity: leftBase / rightBase, unit: .meters)
//        }
//    default:
//        break
//    }
//    return nil
//}

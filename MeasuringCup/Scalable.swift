//
//  Scalable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–15.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public protocol Scalable {
    @warn_unused_result
    func *(lhs: Self, rhs: Double) -> Self
    @warn_unused_result
    func *(lhs: Self, rhs: Float) -> Self
    @warn_unused_result
    func *(lhs: Self, rhs: Int) -> Self
    @warn_unused_result
    func *(lhs: Double, rhs: Self) -> Self
    @warn_unused_result
    func *(lhs: Float, rhs: Self) -> Self
    @warn_unused_result
    func *(lhs: Int, rhs: Self) -> Self
}

public func *<T: Scalable>(lhs: Double, rhs: T) -> T {
    return rhs * lhs
}
public func *<T: Scalable>(lhs: Float, rhs: T) -> T {
    return rhs * lhs
}
public func *<T: Scalable>(lhs: Int, rhs: T) -> T {
    return rhs * lhs
}
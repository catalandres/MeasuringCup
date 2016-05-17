//
//  Summable.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–15.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public protocol Summable: Scalable {
    @warn_unused_result
    func +(lhs: Self, rhs: Self) -> Self?
    @warn_unused_result
    func -(lhs: Self, rhs: Self) -> Self?
}

public func -<T: Summable>(lhs: T, rhs: T) -> T? {
    return lhs + (-1) * rhs
}
//
//  MeasureNumber+Time.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–19.
//  Copyright © 2016 Ayre. All rights reserved.
//


extension MeasureNumber {
    var nanoseconds: Time {
        return Time(quantity: self, unit: .nanoseconds)
    }
    var microseconds: Time {
        return Time(quantity: self, unit: .microseconds)
    }
    var milliseconds: Time {
        return Time(quantity: self, unit: .milliseconds)
    }
    var seconds: Time {
        return Time(quantity: self, unit: .seconds)
    }
    var minutes: Time {
        return Time(quantity: self, unit: .minutes)
    }
    var hours: Time {
        return Time(quantity: self, unit: .hours)
    }
    var days: Time {
        return Time(quantity: self, unit: .days)
    }
    var weeks: Time {
        return Time(quantity: self, unit: .weeks)
    }
}
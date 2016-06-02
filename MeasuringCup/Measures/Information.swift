//
//  Information.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–26.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Information: ConvertibleMeasure {
    
    public typealias U = Unit
    
    public let quantity: Double
    public let unit: Unit
    
    public init(quantity: MeasureNumber, unit: Unit) {
        self.quantity = Double(quantity)
        self.unit = unit
    }

    public enum Unit: ConvertibleUnitType {
        case bytes, kilobytes, megabytes, gigabytes, terabytes, petabytes, exabytes, zettabytes, yottabytes
        case bits, kilobits, megabits, gigabits, terabits, petabits, exabits, zettabits, yottabits
        case kibibytes, mebibytes, gibibytes, tebibytes, pebibytes, exbibytes, zebibytes, yobibytes
        case kibibits, mebibits, gibibits, tebibits, pebibits, exbibits, zebibits, yobibits
        
        public var symbol: String {
            return Information.unitValues(self).symbol
        }
        public var description: String {
            return Information.unitValues(self).symbol
        }
        public var factor: Double {
            return Information.unitValues(self).factor
        }
        public var shift: Double? {
            return nil
        }
        
        public static var baseUnit: Unit {
            return .bytes
        }
    }
    
    static private func unitValues(unit: Unit) -> (factor: Double, symbol: String) {
        switch unit {
        case .bytes:
            return (pow(10, 0), "B")
        case .kilobytes:
            return (pow(10, 3), "kB")
        case .megabytes:
            return (pow(10, 6), "MB")
        case .gigabytes:
            return (pow(10, 9), "GB")
        case .terabytes:
            return (pow(10, 12), "TB")
        case .petabytes:
            return (pow(10, 15), "PB")
        case .exabytes:
            return (pow(10, 18), "EB")
        case .zettabytes:
            return (pow(10, 21), "ZB")
        case .yottabytes:
            return (pow(10, 24), "YB")
        case .bits:
            return (pow(10, 0) / 8, "b")
        case .kilobits:
            return (pow(10, 3) / 8, "kb")
        case .megabits:
            return (pow(10, 6) / 8, "Mb")
        case .gigabits:
            return (pow(10, 9) / 8, "Gb")
        case .terabits:
            return (pow(10, 12) / 8, "Tb")
        case .petabits:
            return (pow(10, 15) / 8, "Pb")
        case .exabits:
            return (pow(10, 18) / 8, "Eb")
        case .zettabits:
            return (pow(10, 21) / 8, "Zb")
        case .yottabits:
            return (pow(10, 24) / 8, "Yb")
        case .kibibytes:
            return (pow(2, 10), "kiB")
        case .mebibytes:
            return (pow(2, 20), "MiB")
        case .gibibytes:
            return (pow(2, 30), "GiB")
        case .tebibytes:
            return (pow(2, 40), "TiB")
        case .pebibytes:
            return (pow(2, 50), "PiB")
        case .exbibytes:
            return (pow(2, 60), "EiB")
        case .zebibytes:
            return (pow(2, 70), "ZiB")
        case .yobibytes:
            return (pow(2, 80), "YiB")
        case .kibibits:
            return (pow(2, 10) / 8, "kib")
        case .mebibits:
            return (pow(2, 20) / 8, "Mib")
        case .gibibits:
            return (pow(2, 30) / 8, "Gib")
        case .tebibits:
            return (pow(2, 40) / 8, "Tib")
        case .pebibits:
            return (pow(2, 50) / 8, "Pib")
        case .exbibits:
            return (pow(2, 60) / 8, "Eib")
        case .zebibits:
            return (pow(2, 70) / 8, "Zib")
        case .yobibits:
            return (pow(2, 80) / 8, "Yib")
        }
    }
}
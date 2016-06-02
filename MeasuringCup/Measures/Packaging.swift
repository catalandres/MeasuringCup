//
//  Packaging.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–30.
//  Copyright © 2016 Ayre. All rights reserved.
//

import Foundation

public struct Packaging: Measure {
    
    public typealias U = Unit
    
    public let quantity: Double
    public let unit: Unit
    
    public init(quantity: MeasureNumber, unit: Unit) {
        self.quantity = Double(quantity)
        self.unit = unit
    }
    
    public enum Unit: UnitType {
        case slices, boxes, servings, tubes, bottles, packs, bars, cartons, packets, jars, bags, canisters, barrels, cans, units, crates, pallets, items
        case bunches, bulbs, stems
        
        public var symbol: String {
            return Packaging.unitValues(self).symbol
        }
        public var description: String {
            return Packaging.unitValues(self).description
        }
    }
    
    static private func unitValues(unit: Unit) -> (symbol: String, description: String) {
        
        switch unit {
        case .slices:
            return("slice", "description.slices")
        case .boxes:
            return("boxe", "description.boxes")
        case .servings:
            return("serving", "description.servings")
        case .tubes:
            return("tube", "description.tubes")
        case .bottles:
            return("bottle", "description.bottles")
        case .packs:
            return("pack", "description.packs")
        case .bars:
            return("bar", "description.bars")
        case .cartons:
            return("carton", "description.cartons")
        case .packets:
            return("packet", "description.packets")
        case .jars:
            return("jar", "description.jars")
        case .bags:
            return("bag", "description.bags")
        case .canisters:
            return("canister", "description.canisters")
        case .barrels:
            return("barrel", "description.barrels")
        case .cans:
            return("can", "description.cans")
        case .units:
            return("unit", "description.units")
        case .crates:
            return("crate", "description.crates")
        case .pallets:
            return("pallet", "description.pallets")
        case .bunches:
            return("bunche", "description.bunches")
        case .bulbs:
            return("bulb", "description.bulbs")
        case .stems:
            return("stem", "description.stems")
        case .items:
            return("item", "description.items")
        }
    }
    
}

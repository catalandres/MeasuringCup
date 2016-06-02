//
//  MeasureNumber+Time.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–05–19.
//  Copyright © 2016 Ayre. All rights reserved.
//


extension MeasureNumber {
    
    var slices: Packaging {
        return Packaging(quantity: self, unit: .slices)
    }
    var boxes: Packaging {
        return Packaging(quantity: self, unit: .boxes)
    }
    var servings: Packaging {
        return Packaging(quantity: self, unit: .servings)
    }
    var tubes: Packaging {
        return Packaging(quantity: self, unit: .tubes)
    }
    var bottles: Packaging {
        return Packaging(quantity: self, unit: .bottles)
    }
    var packs: Packaging {
        return Packaging(quantity: self, unit: .packs)
    }
    var bars: Packaging {
        return Packaging(quantity: self, unit: .bars)
    }
    var cartons: Packaging {
        return Packaging(quantity: self, unit: .cartons)
    }
    var packets: Packaging {
        return Packaging(quantity: self, unit: .packets)
    }
    var jars: Packaging {
        return Packaging(quantity: self, unit: .jars)
    }
    var bags: Packaging {
        return Packaging(quantity: self, unit: .bags)
    }
    var canisters: Packaging {
        return Packaging(quantity: self, unit: .canisters)
    }
    var barrels: Packaging {
        return Packaging(quantity: self, unit: .barrels)
    }
    var cans: Packaging {
        return Packaging(quantity: self, unit: .cans)
    }
    var units: Packaging {
        return Packaging(quantity: self, unit: .units)
    }
    var crates: Packaging {
        return Packaging(quantity: self, unit: .crates)
    }
    var pallets: Packaging {
        return Packaging(quantity: self, unit: .pallets)
    }
    var bunches: Packaging {
        return Packaging(quantity: self, unit: .bunches)
    }
    var bulbs: Packaging {
        return Packaging(quantity: self, unit: .bulbs)
    }
    var stems: Packaging {
        return Packaging(quantity: self, unit: .stems)
    }
}
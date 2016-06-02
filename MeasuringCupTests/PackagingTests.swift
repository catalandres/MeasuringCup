//
//  PackagingTests.swift
//  MeasuringCup
//
//  Created by Andrés Catalán on 2016–06–02.
//  Copyright © 2016 Ayre. All rights reserved.
//

import XCTest
@testable import MeasuringCup

class PackagingTests: XCTestCase {

    func test_initializer_shouldWork() {
        let oneBox = Packaging(quantity: 1, unit: .boxes)
        XCTAssertEqual(oneBox.quantity, 1)
        XCTAssertEqual(oneBox.unit, Packaging.Unit.boxes)
    }
    
    func test_extensions_shouldWork() {
        XCTAssertEqual(1.slices, Packaging(quantity: 1, unit: .slices))
        XCTAssertEqual(1.boxes, Packaging(quantity: 1, unit: .boxes))
        XCTAssertEqual(1.servings, Packaging(quantity: 1, unit: .servings))
        XCTAssertEqual(1.tubes, Packaging(quantity: 1, unit: .tubes))
        XCTAssertEqual(1.bottles, Packaging(quantity: 1, unit: .bottles))
        XCTAssertEqual(1.packs, Packaging(quantity: 1, unit: .packs))
        XCTAssertEqual(1.bars, Packaging(quantity: 1, unit: .bars))
        XCTAssertEqual(1.cartons, Packaging(quantity: 1, unit: .cartons))
        XCTAssertEqual(1.packets, Packaging(quantity: 1, unit: .packets))
        XCTAssertEqual(1.jars, Packaging(quantity: 1, unit: .jars))
        XCTAssertEqual(1.bags, Packaging(quantity: 1, unit: .bags))
        XCTAssertEqual(1.canisters, Packaging(quantity: 1, unit: .canisters))
        XCTAssertEqual(1.barrels, Packaging(quantity: 1, unit: .barrels))
        XCTAssertEqual(1.cans, Packaging(quantity: 1, unit: .cans))
        XCTAssertEqual(1.units, Packaging(quantity: 1, unit: .units))
        XCTAssertEqual(1.crates, Packaging(quantity: 1, unit: .crates))
        XCTAssertEqual(1.pallets, Packaging(quantity: 1, unit: .pallets))
        XCTAssertEqual(1.bunches, Packaging(quantity: 1, unit: .bunches))
        XCTAssertEqual(1.bulbs, Packaging(quantity: 1, unit: .bulbs))
        XCTAssertEqual(1.stems, Packaging(quantity: 1, unit: .stems))
        XCTAssertEqual(1.items, Packaging(quantity: 1, unit: .items))
    }
    
    func test_comparisons_shouldWork() {
        XCTAssert(1.boxes == 1.boxes)
        XCTAssert(1.boxes <= 1.boxes)
        XCTAssert(1.boxes <= 2.boxes)
        XCTAssert(1.boxes < 2.boxes)
        XCTAssert(1.boxes >= 1.boxes)
        XCTAssert(2.boxes >= 1.boxes)
        XCTAssert(2.boxes > 1.boxes)
        XCTAssert(1.boxes != 1.cans)
        XCTAssert(2.boxes != 1.cans)
        XCTAssert(1.boxes != 2.cans)
        XCTAssertFalse(2.boxes > 1.cans)
        XCTAssertFalse(1.boxes > 1.cans)
        XCTAssertFalse(1.boxes > 2.cans)
        XCTAssertFalse(2.boxes >= 1.cans)
        XCTAssertFalse(1.boxes >= 1.cans)
        XCTAssertFalse(1.boxes >= 2.cans)
        XCTAssertFalse(1.boxes < 2.cans)
        XCTAssertFalse(1.boxes < 1.cans)
        XCTAssertFalse(2.boxes < 1.cans)
        XCTAssertFalse(1.boxes <= 2.cans)
        XCTAssertFalse(1.boxes <= 1.cans)
        XCTAssertFalse(2.boxes <= 1.cans)
    }
    

    
    func test_sums_shouldWorkForSameUnit() {
        XCTAssertEqual(1.boxes + 2.boxes, 3.boxes)
    }
    
    func test_sums_shouldYieldNilForDifferentUnits() {
        XCTAssertNil(1.boxes + 1.cans)
    }

    func test_subtraction_shouldWorkForSameUnit() {
        XCTAssertEqual(3.boxes - 2.boxes, 1.boxes)
    }
    
    func test_subtraction_shouldYieldNilForDifferentUnits() {
        XCTAssertNil(1.boxes - 1.cans)
    }

    
    func test_scaling_shouldWork() {
        XCTAssert(3 * 2.boxes == 6.boxes)
        XCTAssert(2.boxes * 3 == 6.boxes)
    }
    
    func test_pluralizedDescriptions_shouldWork() {
        XCTAssertEqual(0.675.slices.description, "0.675 slices")
        XCTAssertEqual(1.slices.description, "1 slice")
        XCTAssertEqual(2.slices.description, "2 slices")
        XCTAssertEqual(0.675.boxes.description, "0.675 boxes")
        XCTAssertEqual(1.boxes.description, "1 box")
        XCTAssertEqual(2.boxes.description, "2 boxes")
        XCTAssertEqual(0.675.servings.description, "0.675 servings")
        XCTAssertEqual(1.servings.description, "1 serving")
        XCTAssertEqual(2.servings.description, "2 servings")
        XCTAssertEqual(0.675.tubes.description, "0.675 tubes")
        XCTAssertEqual(1.tubes.description, "1 tube")
        XCTAssertEqual(2.tubes.description, "2 tubes")
        XCTAssertEqual(0.675.bottles.description, "0.675 bottles")
        XCTAssertEqual(1.bottles.description, "1 bottle")
        XCTAssertEqual(2.bottles.description, "2 bottles")
        XCTAssertEqual(0.675.packs.description, "0.675 packs")
        XCTAssertEqual(1.packs.description, "1 pack")
        XCTAssertEqual(2.packs.description, "2 packs")
        XCTAssertEqual(0.675.bars.description, "0.675 bars")
        XCTAssertEqual(1.bars.description, "1 bar")
        XCTAssertEqual(2.bars.description, "2 bars")
        XCTAssertEqual(0.675.cartons.description, "0.675 cartons")
        XCTAssertEqual(1.cartons.description, "1 carton")
        XCTAssertEqual(2.cartons.description, "2 cartons")
        XCTAssertEqual(0.675.packets.description, "0.675 packets")
        XCTAssertEqual(1.packets.description, "1 packet")
        XCTAssertEqual(2.packets.description, "2 packets")
        XCTAssertEqual(0.675.jars.description, "0.675 jars")
        XCTAssertEqual(1.jars.description, "1 jar")
        XCTAssertEqual(2.jars.description, "2 jars")
        XCTAssertEqual(0.675.bags.description, "0.675 bags")
        XCTAssertEqual(1.bags.description, "1 bag")
        XCTAssertEqual(2.bags.description, "2 bags")
        XCTAssertEqual(0.675.canisters.description, "0.675 canisters")
        XCTAssertEqual(1.canisters.description, "1 canister")
        XCTAssertEqual(2.canisters.description, "2 canisters")
        XCTAssertEqual(0.675.barrels.description, "0.675 barrels")
        XCTAssertEqual(1.barrels.description, "1 barrel")
        XCTAssertEqual(2.barrels.description, "2 barrels")
        XCTAssertEqual(0.675.cans.description, "0.675 cans")
        XCTAssertEqual(1.cans.description, "1 can")
        XCTAssertEqual(2.cans.description, "2 cans")
        XCTAssertEqual(0.675.units.description, "0.675 units")
        XCTAssertEqual(1.units.description, "1 unit")
        XCTAssertEqual(2.units.description, "2 units")
        XCTAssertEqual(0.675.crates.description, "0.675 crates")
        XCTAssertEqual(1.crates.description, "1 crate")
        XCTAssertEqual(2.crates.description, "2 crates")
        XCTAssertEqual(0.675.barrels.description, "0.675 barrels")
        XCTAssertEqual(1.barrels.description, "1 barrel")
        XCTAssertEqual(2.barrels.description, "2 barrels")
        XCTAssertEqual(0.675.pallets.description, "0.675 pallets")
        XCTAssertEqual(1.pallets.description, "1 pallet")
        XCTAssertEqual(2.pallets.description, "2 pallets")
        XCTAssertEqual(0.675.bunches.description, "0.675 bunches")
        XCTAssertEqual(1.bunches.description, "1 bunch")
        XCTAssertEqual(2.bunches.description, "2 bunches")
        XCTAssertEqual(0.675.bulbs.description, "0.675 bulbs")
        XCTAssertEqual(1.bulbs.description, "1 bulb")
        XCTAssertEqual(2.bulbs.description, "2 bulbs")
        XCTAssertEqual(0.675.stems.description, "0.675 stems")
        XCTAssertEqual(1.stems.description, "1 stem")
        XCTAssertEqual(2.stems.description, "2 stems")
        XCTAssertEqual(0.675.items.description, "0.675 items")
        XCTAssertEqual(1.items.description, "1 item")
        XCTAssertEqual(2.items.description, "2 items")
    }
    
}

# MeasuringCup 📐

####Cook up your units swiftly

[![GitHub version](https://badge.fury.io/gh/catalandres%2FMeasuringCup.svg)](https://badge.fury.io/gh/catalandres%2FMeasuringCup)
[![Build Status](https://travis-ci.org/catalandres/SwiftString.svg?branch=master)](https://travis-ci.org/catalandres/SwiftString)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Main Features

- MeasuringCup covers a very complete list of units, both from the International System and from the customary and British unit system, representing **length**, **area**, **volume** (dry, fluid and generic volume), **mass**, **temperature**, **information** and **time**, with more to come.
>>>>>>> 0e9c024... Added packaging units, unit tests and pluralized strings
- Easy to use, easy to read. MeasuringCup leverages Swift's potential for expressivity.

    ```swift
    let someWeight = (2.kilograms + 3.pounds).to(.ounces)
    print(someWeight) // '118.55 oz'
    ```
- Whenever possible, handbooks and working documents from metrology organizations are used to run unit tests, provide code coverage and assure the conversion ratios are correct:
    - [National Institute of Standards and Technology Handbook 44, Appendix C,](http://www.nist.gov/pml/wmd/pubs/upload/appc-14-hb44-final.pdf) with general tables of units of measurement (length, area, volume and mass)
- The framework defines operations between different magnitudes of measure. For example:

    ```swift
    1.meters is Length // true
    1.squareMeters is Area // true
    (1.meters * 1.squareMeters) is Volume // true
    (1.liters / 1.decimeters) is Area // true
    ```
- All measurements and units are value-typed, based on `struct`s and `enum`s, which makes them thread-safe.

- The framework can be extended to suit your needs
- MeasuringCup has an ambitious roadmap you can contribute to, including:
    - Localized descriptions of all measures using `NSLocalizedString`.
    - Support for currencies
    - Support for arbitrarily complex magnitudes (e.g. force = mass x speed / time²)
    - `HKUnit` compatibility

## Alternatives

If all this sounds overkill or too simplistic, please submit an issue or a pull request so that we can do something about it. If you want to use a different framework altogether, you can start with these:
- [danielpi / Swift-Units](https://github.com/danielpi/Swift-Units)
- [onmyway133 / Scale](https://github.com/onmyway133/Scale) 
- [HKUnit](https://developer.apple.com/library/ios/documentation/HealthKit/Reference/HKUnit_Class/) (you can also take a look at [this 2014 article](https://www.natashatherobot.com/healthkit-units/) by [Natasha Murashev](https://twitter.com/natashatherobot))
//
//  Extensions.swift
//  AugmentedCard
//
//  Created by Prayash Thapa on 12/19/18.
//  Copyright © 2018 Prayash Thapa. All rights reserved.
//

import Foundation

// An extension object to create scope functions similar to Kotlin's `apply()`
// From https://stackoverflow.com/a/47587455/2272112
extension ScopeFunction {
    @inline(__always) func apply(block: (Self) -> ()) -> Self {
        block(self)
        return self
    }
}

/// Classes wanting the `.apply()` function should simply conform to the `ScopeFunction` protocol
protocol ScopeFunction {}

// All subclasses of NSObject will have access to the `.apply()` function
extension NSObject: ScopeFunction {}

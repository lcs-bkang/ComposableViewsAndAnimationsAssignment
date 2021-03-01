//
//  Hue.swift
//  ComposableViewsAndAnimations
//
//  Created by Brad Kang on 2021-03-01.
//

import Foundation

struct Hue {
    
    // MARK: Stored Properties
    let base: Double
    let offset: Double
    
    // MARK: Computed properties
    
    // The original hue, plus the provided offset
    var originalHue: Double {
        return base + offset
    }
    
    // A hue equivalent to the relative hue, but normalized to a value between 0 and 360
    var normalized: Double {

        return originalHue.truncatingRemainder(dividingBy: 360.0)

    }
    
    
}

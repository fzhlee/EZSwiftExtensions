//
//  DoubleExtensions.swift
//  EZSwiftExtensionsExample
//
//  Created by Goktug Yilmaz on 12/19/15.
//  Copyright © 2015 Goktug Yilmaz. All rights reserved.
//

import Foundation
import UIKit

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ** : PowerPrecedence

extension Double {
    
    /// EZSE: Converts Double to String
    public var toString: String { return String(self) }

    /// EZSE: Converts Double to Int
    public var toInt: Int { return Int(self) }
    
    #if os(iOS) || os(tvOS)
    
    /// EZSE: Converts Double to CGFloat
    public var toCGFloat: CGFloat { return CGFloat(self) }
    
    #endif
    
    /// EZSE: Creating the exponent operator
    static public func ** (lhs: Double, rhs: Double) -> Double {
        return pow(lhs, rhs)
    }
}

// MARK: - Deprecated 1.8

extension Double {
    
    /// EZSE: Absolute value of Double. 
    public var abs: Double {
        if self > 0 {
            return self
        } else {
            return -self
        }
    }

}

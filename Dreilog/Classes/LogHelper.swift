//
//  Operators.swift
//
//  Created by Fabian Tinsz on 22.01.19.
//  Copyright © 2019 Bertschi AG. All rights reserved.
//

import Foundation

// MARK: String coalescing operator
infix operator ???

/// Optional string coalescing operator,
/// wich takes any optional on it's left side and a default string value on the right.
///
/// - Parameters:
///   - optional: The optional that should be unwrapped.
///   - defaultValue: A String that is beeing returned if the optional is nil.
/// - Returns: If the optional value is non-nil, it unwraps it and returns its string description, otherwise it returns the default value.
public func ???<T>(optional: T?, defaultValue: @autoclosure () -> String) -> String {
    switch optional {
    case let value?:
        return String(describing: value)
    case nil:
        return defaultValue()
    }
}

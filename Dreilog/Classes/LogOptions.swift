//
//  LogOptions.swift
//
//  Created by Fabian Tinsz on 22.01.19.
//  Copyright © 2019 Bertschi AG. All rights reserved.
//

import Foundation

/// Available loggin levels are: `error`, `warning`, `info`, `debug`.
public enum Level: UInt8, CaseIterable {
    case error   = 0
    case warning = 1
    case info    = 2
    case debug   = 3

    var description: String {
        return String(describing: self).uppercased()
    }
}

extension Level: Comparable {
    public static func < (lhs: Level, rhs: Level) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }

    public static func == (lhs: Level, rhs: Level) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}

// MARK: -
public enum Tag: String {
    case none
    case networking
    case database
    case system
    case ui
    case view
    case location
    case pushNotification
    case notifications
    case workflow
    case barcode
    case rx

    var description: String {
        return String(describing: self).uppercased()
    }
}

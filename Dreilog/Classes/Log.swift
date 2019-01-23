//
//  Log.swift
//
//  Created by Fabian Tinsz on 04.10.18.
//  Copyright © 2018 dreipol GmbH. All rights reserved.
//

import Foundation
import os.log

public struct Log {
    public static func debug(
        _ message: Any,
        tag: Tag = .none,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line) {

        Log.print(.debug, tag, message, file, function, line)
    }

    public static func info(
        _ message: Any,
        tag: Tag = .none,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line) {

        Log.print(.info, tag, message, file, function, line)
    }

    public static func warning(
        _ message: Any,
        tag: Tag = .none,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line) {

        Log.print(.warning, tag, message, file, function, line)
    }

    public static func error(
        _ error: Error? = nil,
        description: String? = nil,
        tag: Tag = .none,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line) {

        if let errorDescription = description {
            Log.print(.error, tag, (errorDescription + ": " + error.debugDescription), file, function, line)
        } else {
            Log.print(.error, tag, error.debugDescription, file, function, line)
        }
    }

    private static func shouldLog(with currentLoggingLevel: Level) -> Bool {
        guard let desiredLogLevel = ProcessInfo.processInfo.environment["LOG_LEVEL"] else {
            return false
        }

        guard let logLevel = UInt8(desiredLogLevel), let maximumLoggingLevel = Level(rawValue: logLevel) else {
            return false
        }

        return currentLoggingLevel <= maximumLoggingLevel
    }

    private static func print(
        _ level: Level,
        _ tag: Tag,
        _ message: @autoclosure @escaping () -> Any,
        _ path: @autoclosure @escaping () -> String,
        _ function: @autoclosure @escaping () -> String,
        _ line: @autoclosure @escaping () -> Int) {

#if LOGGING_ENABLED
        if !shouldLog(with: level) {
            return
        }

        let message = message() ??? "message is nil"

        var description = level.description
        if tag != .none {
            description += " " + tag.description
        }

        if #available(iOS 10.0, *) {
            let fileName = path().fileNameWithoutExtension
            os_log("[%@ | %@:%d] %@", description, fileName, line(), message)
        } else {
            NSLog("[%@] %@", description, message)
        }
#endif
    }
}

// MARK: - String extension
private extension String {
    private var removePathExtension: String {
        return (self as NSString).deletingPathExtension
    }

    private var lastPathComponent: String {
        return (self as NSString).lastPathComponent
    }

    var fileNameWithoutExtension: String {
        return lastPathComponent.removePathExtension
    }
}

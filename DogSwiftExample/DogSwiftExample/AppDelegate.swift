//
//  AppDelegate.swift
//  DogSwiftExample
//
//  Created by Fabian Tinsz on 15.07.19.
//  Copyright © 2019 dreipol. All rights reserved.
//

import UIKit
import DogSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Log.debug(#function)
        Log.info(#function)
        Log.warning(#function)

        let exampleError = NSError(domain: "ch.dreipol", code: -9999, userInfo: [
            NSLocalizedDescriptionKey: "Flying to the moon was not possible.",
            NSLocalizedFailureReasonErrorKey: "The operation timed out.",
            NSLocalizedRecoverySuggestionErrorKey: "Have you tried turning it off and on again?"
        ])
        Log.error(exampleError, description: #function, tag: .system)

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        Log.debug(#function)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        Log.debug(#function)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        Log.debug(#function)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        Log.debug(#function)
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        Log.debug(#function)
    }
}


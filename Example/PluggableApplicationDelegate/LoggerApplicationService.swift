//
//  LoggerApplicationService.swift
//  PluggableApplicationDelegate
//
//  Created by Fernando Ortiz on 2/25/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import PluggableApplicationDelegate

final class LoggerApplicationService: NSObject, ApplicationService {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        print("It has started!")
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("It has entered background")
    }
}

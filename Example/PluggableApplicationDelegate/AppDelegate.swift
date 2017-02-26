//
//  AppDelegate.swift
//  PluggableApplicationDelegate
//
//  Created by fmo91 on 02/25/2017.
//  Copyright (c) 2017 fmo91. All rights reserved.
//

import UIKit
import PluggableApplicationDelegate

@UIApplicationMain
class AppDelegate: PluggableApplicationDelegate {
    
    override var services: [ApplicationService] {
        return [
            LoggerApplicationService()
        ]
    }
}

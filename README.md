# PluggableApplicationDelegate

[![CI Status](http://img.shields.io/travis/fmo91/PluggableApplicationDelegate.svg?style=flat)](https://travis-ci.org/fmo91/PluggableApplicationDelegate)
[![Version](https://img.shields.io/cocoapods/v/PluggableApplicationDelegate.svg?style=flat)](http://cocoapods.org/pods/PluggableApplicationDelegate)
[![License](https://img.shields.io/cocoapods/l/PluggableApplicationDelegate.svg?style=flat)](http://cocoapods.org/pods/PluggableApplicationDelegate)
[![Platform](https://img.shields.io/cocoapods/p/PluggableApplicationDelegate.svg?style=flat)](http://cocoapods.org/pods/PluggableApplicationDelegate)

## Introduction
`AppDelegate` is a traditional example of bad code. Lots of line of code that makes so much different things are put together in methods that are called within the application life cycle. But all of those concerns are over.
Using `PluggableApplicationDelegate` you decouple AppDelegate from the services that you plug to it. Each `ApplicationService` has its own life cycle that is shared with `AppDelegate`. 

## At a glance
Let see some code.
Here is how a `ApplicationService` is like:

```swift
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
```

That's all. **It is exactly the same as a AppDelegate**. Think of `ApplicationService` as sub-AppDelegates.

In `AppDelegate` you just have to inherit from PluggableApplicationDelegate to register the services.

```swift
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
```

Yes. That's all. Simple.

## How does this work?

You may want to read my [Medium post about Pluggable App Delegate](https://medium.com/ios-os-x-development/pluggableapplicationdelegate-e50b2c5d97dd#.sz50l4d0l).
Basically, you do an inversion of control. Instead of let AppDelegate instantiate your dependencies, perform actions at every step of its life cycle, you create objects that share the AppDelegate life cycle and plug them into your AppDelegate.
Those objects are observers of the AppDelegate. Your AppDelegate has the only responsibility of notify them about its life cycle events.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

PluggableApplicationDelegate requires Swift 3.0 or above.

## Installation

PluggableApplicationDelegate is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PluggableApplicationDelegate'
```

## Author

fmo91, ortizfernandomartin@gmail.com

## License

PluggableApplicationDelegate is available under the MIT license. See the LICENSE file for more info.

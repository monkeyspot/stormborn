//
//  AppDelegate.swift
//  example
//
//  Created by Oliver Letterer on 07.03.19.
//  Copyright © 2019 Monkeyspot. All rights reserved.
//

import UIKit
import stormborn

class Greeter: NSObject {
    override init() {
        print("Greeter.init()")
    }
    
    deinit {
        print("Greeter.deinit")
    }
    
    @objc dynamic func greet(animated: Bool) -> Void {
        print("greet  \(animated)")
    }
    
    @objc dynamic func greetReturn(animated: Bool) -> Bool {
        print("greetReturn  \(animated)")
        return !animated
    }
    
    @objc dynamic func greet(name: String) -> Void {
        print("Hello \(name)")
    }
    
    @objc dynamic func greet(object: Greeter) -> Void {
        print("Hello \(object)")
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Greeter.swizzle🌪.greetWithAnimated { (object, animated: Bool, sup) -> Void in
            print("greet🌪 \(animated)")
            return sup.invoke(!animated)
        }

        Greeter.swizzle🌪.greetReturnWithAnimated { (object, animated: Bool, sup) -> Bool in
            print("greetReturn🌪 \(animated)")
            return sup.invoke(!animated)
        }

        Greeter().greet(animated: true)
        print("Greeter \(Greeter().greetReturn(animated: true))")
        
        Greeter.swizzle🌪.greetWithName { (object, name: NSString, sup) -> Void in
            return sup.invoke(name.appending(" Letterer") as NSString)
        }

        Greeter().greet(name: "Oliver")
        
        Greeter.swizzle🌪.greetWithObject { (object, name: Greeter, sup) -> Void in
            return sup.invoke(Greeter())
        }
        
        Greeter().greet(object: Greeter())
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}


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
        
        ViewController.swizzle🌪.viewDidAppear { (object, animated: Bool, sup) -> Void in
            sup.invoke(animated)
            
            print("1. view did appear" + (animated ? " animated" : ""))
        }

        ViewController.swizzle🌪.viewDidAppear { (object, animated: Bool, sup) -> Void in
            sup.invoke(animated)
            
            print("2. view did appear" + (animated ? " animated" : ""))
        }

        ViewController.swizzle🌪.viewDidAppear { (object, animated: Bool, sup) -> Void in
            sup.invoke(animated)
            
            print("3. view did appear" + (animated ? " animated" : ""))
        }

        ViewController().viewDidAppear(false)
        ViewController().viewDidAppear(true)
        
        return true
    }
}

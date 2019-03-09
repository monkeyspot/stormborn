import UIKit
import stormborn

UIViewController.swizzle🌪.viewDidAppear { (object, animated: Bool, sup) -> Void in
    sup.invoke(animated)
    
    print("view did appear" + (animated ? " animated" : ""))
}

UIViewController().viewDidAppear(false)
UIViewController().viewDidAppear(true)

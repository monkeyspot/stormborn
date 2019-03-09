import Foundation
import stormborn

class Greeter: NSObject {
    @objc dynamic func greet(first: String, last: String) -> String {
        return "Hello \(first) \(last)"
    }
}

Greeter.swizzle🌪.greetWithFirstlast { (object, arguments: (first: NSString, last: NSString), sup) -> NSString in
    return sup.invoke(arguments.first.appending(" Christian") as NSString, arguments.last)
}

print(Greeter().greet(first: "Oliver", last: "Letterer"))

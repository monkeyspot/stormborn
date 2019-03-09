# 🌪 stormborn

Lazy method swizzling, limited to 20 arguments.

## Example

#### without arguments

```swift
UIView.swizzle🌪.layoutSubviews { (object, sup) -> in
    sup.invoke()
}
```

#### with arguments

```swift
UIViewController.swizzle🌪.viewDidAppear { (object, animated: Bool, sup) -> in
    sup.invoke(animated)
}
```

#### multiple arguments and return types

```swift
class Greeter: NSObject {
    @objc dynamic func greet(first: String, last: String) -> String {
        return "Hello \(first) \(last)"
    }
}

Greeter.swizzle🌪.greetWithFirstlast { (object, arguments: (first: NSString, last: NSString), sup) -> NSString in
    return sup.invoke(arguments.first, arguments.last)
}
```

## Author

Oliver Letterer, oliver.letterer@gmail.com

## License

stormborn is available under the MIT license. See the LICENSE file for more info.

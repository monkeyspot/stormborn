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

## Author

Oliver Letterer, oliver.letterer@gmail.com

## License

stormborn is available under the MIT license. See the LICENSE file for more info.

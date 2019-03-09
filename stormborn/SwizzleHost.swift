//
//  SwizzleHost.swift
//  🌪 stromborn
//
//  Created by Oliver Letterer on 07.03.19.
//  Copyright © 2019 Oliver Letterer. All rights reserved.
//

import Foundation

public protocol SwizzleHost: AnyObject {}

public extension SwizzleHost where Self: NSObject {
    static var swizzle🌪: SwizzleProxy<Self> {
        return SwizzleProxy(type: self)
    }
}

extension NSObject: SwizzleHost {}

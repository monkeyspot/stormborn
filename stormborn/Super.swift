//
//  Super.swift
//  🌪 stromborn
//
//  Created by Oliver Letterer on 07.03.19.
//  Copyright © 2019 Oliver Letterer. All rights reserved.
//

import Foundation

public struct Super<R> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke() -> R {
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super1<R, A1> {
    let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1) -> R {
        var b1: A1? = a1
        
        invocation.setArgument(&b1, at: 2)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super2<R, A1, A2> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2) -> R {
        var b1: A1? = a1, b2: A2? = a2
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super3<R, A1, A2, A3> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super4<R, A1, A2, A3, A4> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super5<R, A1, A2, A3, A4, A5> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super6<R, A1, A2, A3, A4, A5, A6> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super7<R, A1, A2, A3, A4, A5, A6, A7> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super8<R, A1, A2, A3, A4, A5, A6, A7, A8> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super9<R, A1, A2, A3, A4, A5, A6, A7, A8, A9> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super10<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super11<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super12<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super13<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12, _ a13: A13) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12, b13: A13? = a13
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        invocation.setArgument(&b13, at: 14)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super14<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12, _ a13: A13, _ a14: A14) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12, b13: A13? = a13, b14: A14? = a14
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        invocation.setArgument(&b13, at: 14)
        invocation.setArgument(&b14, at: 15)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super15<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12, _ a13: A13, _ a14: A14, _ a15: A15) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12, b13: A13? = a13, b14: A14? = a14, b15: A15? = a15
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        invocation.setArgument(&b13, at: 14)
        invocation.setArgument(&b14, at: 15)
        invocation.setArgument(&b15, at: 16)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super16<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12, _ a13: A13, _ a14: A14, _ a15: A15, _ a16: A16) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12, b13: A13? = a13, b14: A14? = a14, b15: A15? = a15, b16: A16? = a16
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        invocation.setArgument(&b13, at: 14)
        invocation.setArgument(&b14, at: 15)
        invocation.setArgument(&b15, at: 16)
        invocation.setArgument(&b16, at: 17)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super17<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12, _ a13: A13, _ a14: A14, _ a15: A15, _ a16: A16, _ a17: A17) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12, b13: A13? = a13, b14: A14? = a14, b15: A15? = a15, b16: A16? = a16, b17: A17? = a17
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        invocation.setArgument(&b13, at: 14)
        invocation.setArgument(&b14, at: 15)
        invocation.setArgument(&b15, at: 16)
        invocation.setArgument(&b16, at: 17)
        invocation.setArgument(&b17, at: 18)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super18<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12, _ a13: A13, _ a14: A14, _ a15: A15, _ a16: A16, _ a17: A17, _ a18: A18) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12, b13: A13? = a13, b14: A14? = a14, b15: A15? = a15, b16: A16? = a16, b17: A17? = a17, b18: A18? = a18
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        invocation.setArgument(&b13, at: 14)
        invocation.setArgument(&b14, at: 15)
        invocation.setArgument(&b15, at: 16)
        invocation.setArgument(&b16, at: 17)
        invocation.setArgument(&b17, at: 18)
        invocation.setArgument(&b18, at: 19)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super19<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12, _ a13: A13, _ a14: A14, _ a15: A15, _ a16: A16, _ a17: A17, _ a18: A18, _ a19: A19) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12, b13: A13? = a13, b14: A14? = a14, b15: A15? = a15, b16: A16? = a16, b17: A17? = a17, b18: A18? = a18, b19: A19? = a19
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        invocation.setArgument(&b13, at: 14)
        invocation.setArgument(&b14, at: 15)
        invocation.setArgument(&b15, at: 16)
        invocation.setArgument(&b16, at: 17)
        invocation.setArgument(&b17, at: 18)
        invocation.setArgument(&b18, at: 19)
        invocation.setArgument(&b19, at: 20)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

public struct Super20<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20> {
    private let invocation: SWZInvocation
    
    init(invocation: SWZInvocation) {
        self.invocation = invocation
    }
    
    public func invoke(_ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9, _ a10: A10,
                       _ a11: A11, _ a12: A12, _ a13: A13, _ a14: A14, _ a15: A15, _ a16: A16, _ a17: A17, _ a18: A18, _ a19: A19, _ a20: A20) -> R {
        var b1: A1? = a1, b2: A2? = a2, b3: A3? = a3, b4: A4? = a4, b5: A5? = a5, b6: A6? = a6, b7: A7? = a7, b8: A8? = a8, b9: A9? = a9, b10: A10? = a10
        var b11: A11? = a11, b12: A12? = a12, b13: A13? = a13, b14: A14? = a14, b15: A15? = a15, b16: A16? = a16, b17: A17? = a17, b18: A18? = a18, b19: A19? = a19, b20: A20? = a20
        
        invocation.setArgument(&b1, at: 2)
        invocation.setArgument(&b2, at: 3)
        invocation.setArgument(&b3, at: 4)
        invocation.setArgument(&b4, at: 5)
        invocation.setArgument(&b5, at: 6)
        invocation.setArgument(&b6, at: 7)
        invocation.setArgument(&b7, at: 8)
        invocation.setArgument(&b8, at: 9)
        invocation.setArgument(&b9, at: 10)
        invocation.setArgument(&b10, at: 11)
        invocation.setArgument(&b11, at: 12)
        invocation.setArgument(&b12, at: 13)
        invocation.setArgument(&b13, at: 14)
        invocation.setArgument(&b14, at: 15)
        invocation.setArgument(&b15, at: 16)
        invocation.setArgument(&b16, at: 17)
        invocation.setArgument(&b17, at: 18)
        invocation.setArgument(&b18, at: 19)
        invocation.setArgument(&b19, at: 20)
        invocation.setArgument(&b20, at: 21)
        
        invocation.invoke()
        
        if R.self == Void.self {
            return () as! R
        } else {
            var result: R? = nil
            invocation.getReturnValue(&result)
            
            return result!
        }
    }
}

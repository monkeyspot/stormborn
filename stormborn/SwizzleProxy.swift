//
//  SwizzleProxy.swift
//  🌪 stromborn
//
//  Created by Oliver Letterer on 07.03.19.
//  Copyright © 2019 Oliver Letterer. All rights reserved.
//

import Foundation

@dynamicMemberLookup
public class SwizzleProxy<Type: AnyObject> {
    private let type: Type.Type

    public init(type: Type.Type) {
        self.type = type
    }
}

private func extract<T>(_ invocation: SWZInvocation, _ index: Int) -> T {
    if T.self is AnyClass {
        var value: Unmanaged<AnyObject>? = nil
        invocation.getArgument(&value, at: index)
        return value!.takeUnretainedValue() as! T
    } else {
        var value: T? = nil
        invocation.getArgument(&value, at: 2)
        return value!
    }
}

public extension SwizzleProxy {
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20), Super20<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 20, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13), a13: A13 = extract(invocation, 14), a14: A14 = extract(invocation, 15), a15: A15 = extract(invocation, 16)
                let a16: A16 = extract(invocation, 17), a17: A17 = extract(invocation, 18), a18: A18 = extract(invocation, 19), a19: A19 = extract(invocation, 20), a20: A20 = extract(invocation, 21)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20), Super20(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19), Super19<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 19, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13), a13: A13 = extract(invocation, 14), a14: A14 = extract(invocation, 15), a15: A15 = extract(invocation, 16)
                let a16: A16 = extract(invocation, 17), a17: A17 = extract(invocation, 18), a18: A18 = extract(invocation, 19), a19: A19 = extract(invocation, 20)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19), Super19(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18), Super18<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 18, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13), a13: A13 = extract(invocation, 14), a14: A14 = extract(invocation, 15), a15: A15 = extract(invocation, 16)
                let a16: A16 = extract(invocation, 17), a17: A17 = extract(invocation, 18), a18: A18 = extract(invocation, 19)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18), Super18(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17), Super17<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 17, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13), a13: A13 = extract(invocation, 14), a14: A14 = extract(invocation, 15), a15: A15 = extract(invocation, 16)
                let a16: A16 = extract(invocation, 17), a17: A17 = extract(invocation, 18)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17), Super17(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16), Super16<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 16, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13), a13: A13 = extract(invocation, 14), a14: A14 = extract(invocation, 15), a15: A15 = extract(invocation, 16)
                let a16: A16 = extract(invocation, 17)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16), Super16(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15), Super15<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 15, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13), a13: A13 = extract(invocation, 14), a14: A14 = extract(invocation, 15), a15: A15 = extract(invocation, 16)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15), Super15(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14), Super14<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 14, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13), a13: A13 = extract(invocation, 14), a14: A14 = extract(invocation, 15)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14), Super14(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13), Super13<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 13, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13), a13: A13 = extract(invocation, 14)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13), Super13(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12), Super12<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 12, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12), a12: A12 = extract(invocation, 13)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12), Super12(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11), Super11<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 11, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                let a11: A11 = extract(invocation, 12)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11), Super11(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10), Super10<R, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 10, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10), a10: A10 = extract(invocation, 11)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10), Super10(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8, A9>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8, A9), Super9<R, A1, A2, A3, A4, A5, A6, A7, A8, A9>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 9, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9), a9: A9 = extract(invocation, 10)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8, a9), Super9(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7, A8>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7, A8), Super8<R, A1, A2, A3, A4, A5, A6, A7, A8>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 8, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8), a8: A8 = extract(invocation, 9)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7, a8), Super8(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6, A7>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6, A7), Super7<R, A1, A2, A3, A4, A5, A6, A7>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 7, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7), a7: A7 = extract(invocation, 8)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6, a7), Super7(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5, A6>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5, A6), Super6<R, A1, A2, A3, A4, A5, A6>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 6, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                let a6: A6 = extract(invocation, 7)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5, a6), Super6(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4, A5>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4, A5), Super5<R, A1, A2, A3, A4, A5>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 5, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5), a5: A5 = extract(invocation, 6)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4, a5), Super5(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3, A4>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3, A4), Super4<R, A1, A2, A3, A4>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 4, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4), a4: A4 = extract(invocation, 5)
                
                var result: R? = closure(object as! Type, (a1, a2, a3, a4), Super4(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2, A3>(dynamicMember member: String) -> (@escaping (Type, (A1, A2, A3), Super3<R, A1, A2, A3>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 3, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3), a3: A3 = extract(invocation, 4)
                
                var result: R? = closure(object as! Type, (a1, a2, a3), Super3(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1, A2>(dynamicMember member: String) -> (@escaping (Type, (A1, A2), Super2<R, A1, A2>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 2, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2), a2: A2 = extract(invocation, 3)
                
                var result: R? = closure(object as! Type, (a1, a2), Super2(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R, A1>(dynamicMember member: String) -> (@escaping (Type, (A1), Super1<R, A1>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 1, R.self != Void.self, { object, invocation in
                let a1: A1 = extract(invocation, 2)
                
                var result: R? = closure(object as! Type, (a1), Super1(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
    
    public subscript<R>(dynamicMember member: String) -> (@escaping (Type, Super<R>) -> R) -> Void {
        return { closure in
            swizzle_hookMember(self.type, member, 0, R.self != Void.self, { object, invocation in
                var result: R? = closure(object as! Type, Super(invocation: invocation))
                invocation.setReturnValue(&result)
            })
        }
    }
}

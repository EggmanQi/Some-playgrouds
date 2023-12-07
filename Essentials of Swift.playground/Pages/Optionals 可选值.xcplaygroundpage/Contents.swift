//: [Previous](@previous)

import Foundation

let opposites = [
    "Mario" : "Wario",
    "Luigi" : "Waluigi",
]

let description_optional = """
通过 '?' 操作法来声明.
Optional 可选类型被定义为一个枚举, 有 none 和 some(Warpped) 两种类型.
Warpped 是实际存储的值.
如果一个变量是 optional 的, 那意味着它同时有 nil 和 value 两种情况.
"""
let description_warp = """
将一个值赋给可选变量的过程叫做 warp, 即 obj.some(Warpped) = value
"""
let description_unwarp = """
Unwarp 是指从 optional 变量中提取值的过程.
"""
// MARK: 默认为 optional 类型, 允许返回 nil, 有可能导致某些 code crash
let peachOpposite = opposites["Peach"]

// MARK: unwarpping value
// MARK: 通过 ‘!’ 来强制 unwarpping, 但可选值是 nil 时会导致 crash: ‘Fatal error: Unexpectedly found nil while unwrapping an Optional value’
//let peachOpposite_must_have_value = opposites["Peach"]!
let peachOpposite_must_have_value = opposites["Peach"] ?? "Bitch"

if let marioOpposite = opposites["Mario"] {
    // MARK: 声明常量可以直接作为 if 的判断条件, 等价 if marioOpposite!=nil
    print(marioOpposite)
}

func printSquare(of number: Int?) {
    // MARK: ‘guard let number = number’ 可以简略为 ‘guard let number’
    guard let number else {
        print("Missing input")
        return
    }
    print("\(number * number)")
}
printSquare(of: nil)




//: [Next](@next)

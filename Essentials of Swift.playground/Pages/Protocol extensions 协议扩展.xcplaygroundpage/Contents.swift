//: [Previous](@previous)

import Foundation

// MARK: 可以为现有的协议添加默认实现, 新的方法和计算属性

protocol MyProtocol {
    func methodInProtocol()
}

extension MyProtocol {
    func methodInProtocol() {
        print("Default Implementation")
    }

    func additionalMethod() {
        print("New method in the extension of protocol")
    }
}

extension Collection {

    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["A", "B", "C"]
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}
//: [Next](@next)

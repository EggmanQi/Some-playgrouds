//: [Previous](@previous)

import Foundation

struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0

    // MARK: 每次读取都会重新计算值, 但这样不能设置值(隐含 get-only)
    var vacationRemaining: Int {
        vacationAllowed - vacationTaken
    }

    var vacationRemaining_read_write: Int {
        get {
            vacationAllowed - vacationTaken
        }
        set {
            // MARK: 旧值可以通过 _vacationRemaining_read_write 的方法获取
            vacationAllowed = vacationTaken + newValue
        }
    }
}

var e = Employee(name: "Tommy")
e.vacationRemaining_read_write = 10
print(e.vacationRemaining_read_write)

//: [Next](@next)

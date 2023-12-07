//: [Previous](@previous)

import Foundation

struct BackAccount {
    // MARK: 通过 private(set) 使属性只能在内部被修改
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

let account = BackAccount(funds: 100)
// MARK: error: left side of mutating operator isn't mutable: 'funds' setter is inaccessible
account.funds += 100

//: [Next](@next)

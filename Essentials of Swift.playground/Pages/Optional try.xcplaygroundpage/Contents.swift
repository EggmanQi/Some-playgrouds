//: [Previous](@previous)

import Foundation

enum UserError: Error {
    case badId, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("Jordan: \(user)")
}

//: [Next](@next)

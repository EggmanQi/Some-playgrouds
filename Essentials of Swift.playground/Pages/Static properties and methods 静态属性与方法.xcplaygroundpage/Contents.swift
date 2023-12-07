//: [Previous](@previous)

import Foundation

struct AppData {
    static let version = "1.0 beta 1"
    static func getSettingFile() -> String {
        "Setting.json"
    }
}

print( AppData.version )
print( AppData.getSettingFile() )
//: [Next](@next)

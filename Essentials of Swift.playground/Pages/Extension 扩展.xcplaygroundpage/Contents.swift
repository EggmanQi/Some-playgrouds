//: [Previous](@previous)

import Foundation

extension String {
    // MARK: extension 可以为任何对象(struct/class/enum)增加方法/计算属性
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    mutating func trim() {
        self = self.trimmed()
    }

    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "  Hello \n, world"
print(quote.trimmed())
print(quote.trim())
print(quote.lines)

//: [Next](@next)

import Foundation

// This is a sample Closure
let sayHello = {
    print("Hi there!")
}

let sayHelloWith = { (name: String) -> String in
    let result = ("Hi, \(name)!")
    print(result)
    return result
}

sayHello()
sayHelloWith("Cat")

let teams = ["a", "b", "c", "d"]
let onlyWinner_full = teams.filter({ (name: String) -> Bool in
    return name.hasPrefix("a")
})
let onlyWinner_remove_return = teams.filter({ (name: String) -> Bool in
    name.hasPrefix("b")
})
let onlyWinner_remove_types = teams.filter({ name in
    name.hasPrefix("c")
})
let onlyWinner_最简略closures = teams.filter{ $0.hasPrefix("d") }

print(onlyWinner_full)
print(onlyWinner_remove_return)
print(onlyWinner_remove_types)
print(onlyWinner_最简略closures)

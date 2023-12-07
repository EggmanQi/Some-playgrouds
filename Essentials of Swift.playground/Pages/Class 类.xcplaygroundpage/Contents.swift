//: [Previous](@previous)

import Foundation

class Employee {
    let hours: Int
    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours per day")
    }
}

class Develop: Employee {
    func work() {
        print("I coding \(hours) hours per day")
    }

    // MARK: 通过 override 重载父类方法
    override func printSummary() {
        print("I am a coder")
    }
}

let dev = Develop(hours: 10)
dev.printSummary()
dev.work()

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible

        // MARK: 子类的初始化器必须在最后实现父类的初始化器
        super.init(isElectric: isElectric)
    }
}

// MARK: Class 类型实例会共享内存, Struct 类型实例则不会
struct Actor {
    var name = "Nicolas Cage"
}

class ActorClass {
    var name = "Nicolas Cage"
}

func testStructMemory() {
    var actor1 = Actor()
    var actor2 = actor1 // MARK: struct 是值类型, 实际上是把实例的副本赋值过去, 可以理解为 actor2 = actor1.copy

    actor2.name = "Tom Cruise"
    print(actor1.name)
    print(actor2.name)
}

func testClassMemory() {
    var actor1 = ActorClass()
    var actor2 = actor1 // MARK: class 是引用类型, 这里赋值实际上是传递了引用指针, 所以修改其中一个都会引起实际内存数据被修改

    actor2.name = "Tom Cruise"
    print(actor1.name)
    print(actor2.name)
}

testStructMemory()
testClassMemory()

class Site {
    let id: Int
    init(id: Int) {
        self.id = id
        print("\(id) has been created")
    }
    deinit {
        // MARK: 超出作用域后被释放
        print("\(id) has been destroyed")
    }
}

for i in 1...3 {
    let a = Site(id: i)
    print("I loop \(a.id) \(i) times")
}

class Singer {
    // MARK: 引用类型所有方法默认都可以改变其实例属性, 不需要 mutating 关键字
    var name = "Adele"
}

let singer = Singer()
singer.name = "Taylor Swift"
print(singer.name)
//: [Next](@next)

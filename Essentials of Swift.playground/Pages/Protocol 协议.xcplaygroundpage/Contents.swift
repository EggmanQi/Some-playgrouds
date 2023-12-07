//: [Previous](@previous)

import Foundation

protocol Vehicle {
    // MARK: 接受协议后, 必须实现的方法/属性. 可选属性/方法只能用于 class 类型, 通过 @objc + optional 使用.
    // MARK: 协议可以声明属性, 它可以是常量或是计算属性
    var name: String { get }
    var currentPassengers: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    var name = "Car.self"

    var currentPassengers = 1

    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroot() {
        print("It's a nice day!")
    }
}

// MARK: 方法入参类型可以指定为 protocol, 即任何继承了指定协议的对象, 都可以作为入参, 但该对象独有的方法则不能被识别使用
// 可以理解为, 传入时, struct 对象被 copy init 成 protocol 对象
func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("slow")
    } else {
        print("fast")
        vehicle.travel(distance: distance)
    }
}

let car = Car()
print(car.openSunroot())
commute(distance: 1000, using: car)

//: [Next](@next)

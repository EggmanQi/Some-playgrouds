//: [Previous](@previous)

import Foundation

struct Game {
    var score = 0 {
        // 观察器在初始化后才会生效 - 可以理解为, 初始化会写入内存, 这时才有确切的内存地址去观察
        willSet {
            print("Score before: \(score)")
        }
        didSet {
            print("Score after: \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

//: [Next](@next)

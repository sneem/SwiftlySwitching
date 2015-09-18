//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let num:Double = 42
let pi:Double = 3.14

num+pi
num-pi
num/pi
num*pi

var characters = ["R2D2", "Yoda", "Chewie"]

characters.sortInPlace()

characters

for value in characters {
    var amt:Int
    if value=="R2D2" {
        amt = 0
    } else {
        amt = value.characters.count
    }
    print("\(value) gets \(amt) cookies")
}

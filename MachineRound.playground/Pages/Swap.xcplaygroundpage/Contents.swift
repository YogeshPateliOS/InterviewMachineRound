import UIKit

// Swap to numbers

var a = 10.11
var b = 12.12

// (a, b) = (b, a)

func swapNumbers<T>(_ a: inout T, _ b: inout T) {
    (a, b) = (b, a)
}

swapNumbers(&b, &a)

print("a", a)
print("b", b)

///
var numbers = [10 ,12, 15]

func swapNumberUsingIndex<T>(_ array: inout [T], i: Int, j: Int) {
    array.swapAt(i, j)
}
swapNumberUsingIndex(&numbers, i: 0, j: 2)
print(numbers)

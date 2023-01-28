import UIKit

// Remove Duplicate from array

var numbers = [1, 3, 1, 2, 4, 4, 6, 5, 6]
print(Set(numbers))

// Convert to Array
print(Array(Set(numbers)))
print(Set(numbers).sorted())

/*
extension Array where Element: Equatable {

    func removeDuplicateValues() -> [Element] {
        var tempArray: [Element] = []

        for number in self {
            if !tempArray.contains(number) {
                tempArray.append(number)
            }
        }

        return tempArray
    }

}
*/

extension Array where Element: Equatable {

    mutating func removeDuplicateValues(){
        var tempArray: [Element] = []

        for number in self {
            if !tempArray.contains(number) {
                tempArray.append(number)
            }
        }

        self = tempArray
    }

}

numbers.removeDuplicateValues()
print("Result:", numbers)
var characterArray = ["a", "b", "b", "a", "c"]
print("C:", characterArray.removeDuplicateValues())

/**

 # Please like and subscribe for more videos :-)

 */

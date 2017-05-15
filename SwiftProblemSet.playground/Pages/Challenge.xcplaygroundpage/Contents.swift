/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous)
 ****
 */
import Foundation
//: ## Challenge
//: **This exercise is completely optional and is not required for completing the Swift Problem Set.**
//: ### Challenge 1
//: Mystery code! What does this code do? Briefly, using comments, describe what is happening in each line. **Hint**: You may need to look up [Int initializers](http://stackoverflow.com/questions/30739460/toint-removed-in-swift-2).
// We get an array of Characters and Int values
let array = ["A", "13", "B", "5", "87", "t", "41"]

// We set the variable "sum" to 0 before the loop so that we start adding from this desired number.
var sum = 0

// We create a loop so that it iterates the array
for string in array {
    // We validate we are only passing the Int values. In this example characters exit as nil.
    if Int(string) != nil {
        // Once we have the Int values we want to sum up
        let intToAdd = Int(string)!
        // Once unwrapped and casted into intToAdd, the Int is added to value of "sum"
        sum += intToAdd
    }
}
// We print the sum of all Int elements inside the array
print(sum)

/*:
 ****
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous)
 */

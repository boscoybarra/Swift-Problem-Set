/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
//: ## Functions 
//: ### Exercise 14
//: The function `emojiLove` should take two `String` parameters and use them to print a `String` with  the format "stringParameterOne ❤️ stringParameterTwo".
func emojiLove(s1:String, s2:String) {
    print("\(s1) ❤️ \(s2) ")
}

/* Example Function Call
 
 emojiLove(s1: "cats", s2: "dogs") // prints "cats ❤️ dogs"
 emojiLove(s1: "udacity", s2: "students") // prints "udacity ❤️ students"
 emojiLove(s1: "peanut butter", s2: "jelly") // prints "peanut butter ❤️ jelly"
 emojiLove(s1: "ying", s2: "yang") // prints "ying ❤️ yang"
 
 */

emojiLove(s1: "stringParameterOne", s2: "stringParameterTwo")

//: ### Exercise 15
//: The function `median` should take three `Int` parameters and return the `Int` value in the middle.

func median(num1: Int, num2: Int, num3: Int) -> Int {
    
    // We declare median as an Int
    var median: Int
    
    // We create an Array of Ints where to store them
    let numbers: [Int] = [num1, num2, num3]
    
    // We store values in a separate array and then return the middle value
    let sortedNumbers = numbers.sorted {return $0 < $1}
    
    // And return the second already ordered element
    median = sortedNumbers[1]
    
    return median
}

median(num1: 1, num2: 3, num3: 100)

/* Example Function Call
 
 median(num1: 1, num2: 5, num3: 6) // 5
 median(num1: 2, num2: 1, num3: 4) // 2
 median(num1: 3, num2: 6, num3: 6) // 6
 median(num1: -10, num2: 10, num3: 0) // 0
 median(num1: 0, num2: 0, num3: 0) // 0
 median(num1: 2, num2: 3, num3: 1) // 2
 median(num1: 2, num2: 2, num3: 1) // 2
 
 */

/*:
 ### Exercise 16
 
 The function `beginsWithVowel` should take a single `String` parameter and return a `Bool` indicating whether the input string begins with a vowel. If the input string begins with a vowel return true, otherwise return false.
 
 First, you will want to test if the input string is "". If the input string is "", then return false. Otherwise, you can access the first character of a `String` by using `nameOfString.characters[nameOfString.startIndex]`.
 
 
 **Note**: It is assumed that the input string is given in English.
 */
let empty = ""

let vowel: Array<Character> = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]

func beginsWithVowel(s1: String) -> Bool {
    if s1 == empty {
        return false
    } else {
        
        let startWithVOwel: Character = s1.characters[s1.startIndex]
        
        if vowel.contains(startWithVOwel) {
            return true
        } else {
            return false
        }
    }
}

beginsWithVowel(s1: "Andalucia")

/* Example Function Call
 
 beginsWithVowel("Apples") // true
 beginsWithVowel("pIG") // false
 beginsWithVowel("oink") // true
 beginsWithVowel("udacity") // true
 beginsWithVowel("") // false
 
 */

/*:
 ### Exercise 17
 
 The function `funWithWords` should take a single `String` parameter and return a new `String` that is uppercased if it begins with a vowel or is lowercased if it begins with a consonant.
 
 - To uppercase a `String`, use `nameOfString.uppercased()`.
 - To lowercase a `String`, use `nameOfString.lowercased()`.
 - It is assumed that the input string is given in English.
 
 **Hint**: Re-use the `beginsWithVowel` function.
 */
func funWithWords(s1: String) -> String {
    
    let result: String
    
    // We check calling beginsWithVowel() to pass the Array of Characters that match in case of first index vowel
    if beginsWithVowel(s1:s1) {
        result = s1.uppercased()
    } else {
        result = s1.lowercased()
    }
    return result
}

funWithWords(s1: "aNADALuCIA")

/* Example Function Call
 
 funWithWords("Apples") // "APPLES"
 funWithWords("pIG") // "pig"
 funWithWords("oink") // "OINK"
 funWithWords("udacity") // "UDACITY"
 funWithWords("") // ""
 
 */
/*:
 ****
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 */

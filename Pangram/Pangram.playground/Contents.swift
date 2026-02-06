import UIKit

/*
 
 Pangram

 A pangram is a sentence where every letter of the English alphabet appears at least once.

 Given a string sentence containing English letters (lower or upper-case), return true if sentence is a pangram, or false otherwise.

 Note: The given sentence might contain other characters like digits or spaces, your solution should handle these too.

 Example 1:

 Input: sentence = "TheQuickBrownFoxJumpsOverTheLazyDog"
 Output: true
 Explanation: The sentence contains at least one occurrence of every letter of the English alphabet either in lower or upper case.
 
 Example 2:

 Input: sentence = "This is not a pangram"
 Output: false
 Explanation: The sentence doesn't contain at least one occurrence of every letter of the English alphabet.
 
 
 */

func pangram(sentence: String) -> Bool {
    
    var alphabet = "abcdefghjiklmnopqrstuvwxyz"
    var seen = Set<String>()
    
    for letter in sentence {
        if letter.isLetter && alphabet.contains(letter.lowercased()) {
            seen.insert(letter.lowercased())
        }
    }
    return seen.count == alphabet.count
}

pangram(sentence: "TheQuickBrownFoxJumpsOverTheLazyDog")
pangram(sentence: "This is not a pangram")

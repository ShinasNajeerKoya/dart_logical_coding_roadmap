/// Problem:
/// Write a function to reverse a given string.


// Tip:
/// To reverse a string, " you can iterate through the string from the end to the beginning " and build a new string.

// Step-by-Step Explanation:

// 1. Create a function reverseString that takes a string as an input.
// 2. Initialize an empty string to store the reversed string.
// 3. Use a for loop to iterate through the original string from the last character to the first.
// 4. Append each character to the new string.
// 5. Return the reversed string.

main() {
  String text = "ShinasKoya";

  String reversedString = '';

  /// for(start point, end point, operation)

  ///to reverse string, start from the last value and come back to first
  ///starts from text.length - 1(last[it is used for index]) and ends at zero

  for (int i = text.length - 1; i >= 0; i--) {
    reversedString += text[i];        //+= acts as revS = revS + text[index]
  }

  print(reversedString);
}
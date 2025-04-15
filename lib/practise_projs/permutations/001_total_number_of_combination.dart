void main() {
  final List<String> values = ['a', 'b', 'c', 'd'];
  final List<String> result = [];

  recursionFunction(values, result, '', {});

  print('-- answers --');

  for (String answer in result) {
    print(answer);
  }
}

void recursionFunction(
  List<String> initialList,
  List<String> finalResultList,
  String successfulWord,
  Set<String> duplicateValidationSet,
) {
  // when the current added value in the session is equal to the coming list, then it will add to the
  // results and exits that session

  // it will add the incremented current word when the length is equal to the initial list
  // it is to control to add only the equal length strings to the list
  if (successfulWord.length == initialList.length) {
    finalResultList.add(successfulWord);
    return;
  }

  for (int i = 0; i < initialList.length; i++) {
    final currentCharacter = initialList[i];

    // checks if the set contains the current value, if it contains then goes outside the loop and increments the i
    if (duplicateValidationSet.contains(currentCharacter)) {
      continue;
    }

    duplicateValidationSet.add(currentCharacter);

    recursionFunction(
      initialList,
      finalResultList,
      successfulWord + currentCharacter,
      duplicateValidationSet,
    );

    duplicateValidationSet.remove(currentCharacter);
  }
}

// void main() {
//   final letters = ['a', 'b', 'c', 'd'];
//   final List<String> resultValue = [];
//
//   permutationFunction(letters, '', <String>{}, resultValue);
//
//   print('-- answers --');
//   for (String permutation in resultValue) {
//     print(permutation);
//   }
// }
//
//
// void permutationFunction(
//     List<String> characters, String currentValue, Set<String> used, List<String> results) {
//   // when the current added value in the session is equal to the coming list, then it will add to the
//   // results and exits that session
//   // it is to control to add only the equal length strings to the list
//
//   if (currentValue.length == characters.length) {
//     results.add(currentValue);
//     return;
//   }
//
//   // next would be function to write the backtracking using the recursive function (calling the same
//   // function inside itself)
//
//   for (int i = 0; i < characters.length; i++) {
//     String char = characters[i];
//
//
//
//     // checks if the set contains the current value, if it contains then goes outside the loop and increments the i
//
//     if (used.contains(char)) {
//       continue;
//     }
//
//     used.add(char);
//
//     permutationFunction(characters, currentValue + char, used, results);
//
//     used.remove(char);
//   }
// }

void main() {
  Solution solution = Solution(); // Create an instance

  print(solution.asciiValue('hello'));
}

class Solution {
  int asciiValue(String stringValue) {
    // List listString = stringValue.split('');
    // List listInt = listString.forEach((x)=> codeUnitAt(x))
    //
    // int finalValue = 0;
    int score = 0;
    for (int i = 0; i < stringValue.length - 1; i++) {
      score += (stringValue.codeUnitAt(i) - stringValue.codeUnitAt(i + 1)).abs();
    }

    return score;
  }
}

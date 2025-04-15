void main() {
  final list = [13, 4, 7, 9, 2, 1, 4];

  differenceOfLargest(list);
}

void differenceOfLargest(List<int> inputList) {
  inputList.sort((a, b) => b.compareTo(a));

  int sum1 = 0;
  int sum2 = 0;

  for (int num in inputList) {
    // print(num);

    if (sum1 <= sum2) {
      sum1 += num;
      print('sum1 :$sum1');
    } else {
      sum2 += num;
      print('sum2 :$sum2');
    }
  }

  final result = (sum1 - sum2).abs();

  print('result : $result');

  print(inputList);
}

void main() {
  final input = 2134;

  fromNToZero(input);
}

void fromNToZero(int inputValue) {
  int steps = 0;

  while (inputValue > 0) {
    if (inputValue.isEven) {
      inputValue = inputValue ~/ 2;
    } else {
      inputValue = inputValue - 1;
    }
    steps++;
  }

  print('steps : $steps');
}

// Q2 solution

List<int> profite_sort(List<int> profits) {
  List<int> days = [];
  for (int i = 0; i < profits.length; i++) {
    days.add(i);
  }
  for (int i = 0; i < profits.length; i++) {
    for (int j = i + 1; j < profits.length; j++) {
      if (profits[i] < profits[j]) {
        int t;
        t = profits[i];
        profits[i] = profits[j];
        profits[j] = t;

        t = days[i];
        days[i] = days[j];
        days[j] = t;
      }
    }
  }
  return days;
}

void main() {
  var L = [4, 5, 9, 2, 5, 7, 8, 1, 4, 6, 3, 2, 5, 3, 4, 2];

  print("for the given question");
  print(profite_sort(L));

  print("for the given example");
  L = [5, 4, 9, 1];
  print(profite_sort(L));
}

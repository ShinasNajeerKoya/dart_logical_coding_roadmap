void main() {
  final listValue = [2, 3, 7, 4];
  final result = largestIndex(listValue);

  print(result);
}

List<int> largestIndex(List<int> inputList) {
  // first initialize a empty list to store the keyvalue pair.
  List<MapEntry<int, int>> tempList = [];


//for each index, store the value in pair
  for (int i = 0; i < inputList.length; i++) {
    tempList.add(MapEntry(inputList[i], i));
  }

  // now sort the pair using the key as reference (the profits as reference)
  tempList.sort((a, b) => b.key.compareTo(a.key));



  // now take out the values of each map and store into a list and return
  return tempList.map((entry) => entry.value).toList();
}

void main(){

  final inputList = [ 4, 5, 9, 2, 5, 7, 8, 1, 4, 6, 3, 2, 5, 3, 4, 2];

  final value =secondSmallestWithoutSorting(inputList);

  print('output : $value');

}


int? secondSmallestWithoutSorting(List<int> inputList){

//   inputList.sort();

//  final output = inputList.toSet();

  int? smallest = null;   // First pocket (biggest candy at start)
  int? secondSmallest = null;  // Second pocket (also starts big)


  for(int singleValue in inputList){
    if(smallest == null ||singleValue <smallest){
      smallest = singleValue;
    } else if(singleValue >smallest && (secondSmallest == null || singleValue < secondSmallest)){
      secondSmallest = singleValue;
    }


  }


  return secondSmallest;

//   print(output);
}
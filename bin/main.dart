// Challenge 1
// Write failing test cases for next two challenges

// Challenge 2
// Write a function that sorts the positive numbers in ascending order,
// and keeps the negative numbers untouched.
// Example: posNegSort([6, 3, -2, 5, -8, 2, -2]) ➞ [2, 3, -2, 5, -8, 6, -2]
List posNegSort(List x) {
  List positive = x.where((x) => x > 0).toList();
  positive.sort();
  int count = 0;
  for (int i = 0; i < x.length; i++) {
    if (x[i] > 0) {
      x[i] = positive[count];
      count++;
    }
  }
  return x;
}

// Challenge 3
// The Karaca's Encryption Algorithm
// Make a function that encrypts a given input with these steps:
// Input: "apple"
// Step 1: Reverse the input: "elppa"
//
//  Step 2: Replace all vowels using the following chart:
// a => 0
// e => 1
// o => 2
// u => 3
// "1lpp0"
// Step 3: Add "aca" to the end of the word: "1lpp0aca"
// Output: "1lpp0aca"
String karacasEncryption(String x) {
  x = x.split('').reversed.join();
  x = x.replaceAll('a', '0');
  x = x.replaceAll('e', '1');
  x = x.replaceAll('o', '2');
  x = x.replaceAll('u', '3');
  x = x.replaceAll('i', '4');
  x = x + 'aca';
  return x;
}

main() {
  print(karacasEncryption('apple'));
  print(posNegSort([6, 3, -2, 5, -8, 2, -2]));
}

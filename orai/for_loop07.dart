void main() {
  String my_string = "apple";
  int ctr = 0;
  String vowels = "aeuio";
  for (int i = 0; i < my_string.length; i++) {
    if (vowels.contains(my_string[i])) {
      ctr++;
    }
  }
  print(
    "The number of vowels in the word " +
        my_string +
        " is " +
        ctr.toString() +
        ".",
  );
}

void main() {
  String number = "268";
  int ossz = 0;
  for (int i = 0; i < number.length; i++) {
    ossz += int.parse(number[i]);
  }
  print(
    "The average of digits is: " + (ossz / number.length).toStringAsFixed(2),
  );
}

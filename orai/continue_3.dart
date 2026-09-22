void main() {
  String myString = "I have an Apple";
  String ossze = "";
  for (int i = 0; i < myString.length; i++) {
    if (myString[i] == myString[i].toUpperCase() && myString[i] != " ") {
      continue;
    }
    ossze += myString[i];
  }
  print(ossze);
}

void main() {
  int intValue = 67;
  double doubleValue = 6.7;
  String stringValue = "asd";
  bool boolValue = true;

  int intResult = intValue + doubleValue.toInt();
  double doubleResult = doubleValue - 1;
  String stringResult = stringValue + "asd";
  bool boolResult = !boolValue;
  print(
    "hozzáadás: $intResult,\nkivonás: $doubleResult,\nszöveg: $stringResult,\nigaz/hamis: $boolResult",
  );
  intResult = intValue * doubleValue.toInt();
  doubleResult = doubleValue / intValue;
  print("szorzás: $intResult,\nosztás: $doubleResult");
  intResult = intValue ~/ 10;
  doubleResult = doubleValue % 2;
  print("egész osztás: $intResult,\nmaradékos osztás: $doubleResult");
}

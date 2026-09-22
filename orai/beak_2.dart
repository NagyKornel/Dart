void main() {
  String szoveg = "LET US ALL BE THE LEADERS we wish we had.";
  String mag = "aeuio";
  for (int i = 0; i < szoveg.length; i++) {
    if (mag.contains(szoveg[i].toLowerCase())) {
      break;
    } else {
      print(szoveg[i]);
    }
  }
}

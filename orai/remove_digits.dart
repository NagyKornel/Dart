void main() {
  String szoveg = "O teach me how I should forget to think (1.1.224.)";
  szoveg = szoveg.replaceAll(RegExp(r'[0-9]'), '');
  print(szoveg);
}

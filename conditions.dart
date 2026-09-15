import 'dart:io';

void main() {
  print("Kérek egy egész számot");
  int? szam = int.parse(stdin.readLineSync()!);
  szam % 2 == 0 ? print("Páros!") : print("Páratlan!");

  if (szam <= 5 && szam >= 1) {
    if (szam == 5)
      print("Jeles!");
    else if (szam == 4)
      print("Jó!");
    else if (szam == 3)
      print("Közepes!");
    else if (szam == 2)
      print("Elégséges!");
    else
      print("Elégtelen!");
  } else
    print("Érveénytelen osztályzat!");

  switch (szam) {
    case 1:
      print("Elégtelen!");
      break;
    case 2:
      print("Elégséges!");
      break;
    case 3:
      print("Közepes!");
      break;
    case 4:
      print("Jó!");
      break;
    case 5:
      print("Jeles!");
      break;
    default:
      print("Érvénytelen osztályzat!");
      break;
  }

  assert(szam < 6 && szam > 0, print("Tartományon kívül van!"));
}

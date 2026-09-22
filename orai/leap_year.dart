import 'dart:io';

void main() {
  int? szam = int.parse(stdin.readLineSync()!);

  if (szam % 4 == 0 && szam % 400 == 0 || szam % 100 != 0) {
    print("A szám egy szökőév! (" + szam.toString() + ")");
  } else {
    print("A szám nem egy szökőév! (" + szam.toString() + ")");
  }
}

import 'dart:io';

void main() {
  print("Adjon meg 3 és 9 között egy számot!");
  int? megadott = int.parse(stdin.readLineSync()!);
  if (megadott > 3 && megadott < 9) {
    for (int i = 0; i < 10; i++) {
      if (i == megadott) break;
      for (int j = 0; j < 10; j++) {
        if (j == megadott) break;
      }
    }
  }
}

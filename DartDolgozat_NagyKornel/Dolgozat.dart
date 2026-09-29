import 'dart:io';
import 'dart:math';

void main() {
  // 1. feladat
  int a = 0;
  int b = 0;
  int c = 0;
  do {
    print("Kérek egy számot!");
    a = int.parse(stdin.readLineSync()!);
    print("Kérek mégegy számot!");
    b = int.parse(stdin.readLineSync()!);
    print("Kérek mégegy számot!");
    c = int.parse(stdin.readLineSync()!);
  } while (a <= 0 && b <= 0 && c <= 0);

  //2. feladat
  if (a > b) {
    print("A nagyobbik oldal az 'a' oldal (" + a.toString() + ")");
    print("A kisebbik oldal a 'b' oldal (" + b.toString() + ")");
  } else {
    print("A nagyobbik oldal a 'b' oldal (" + b.toString() + ")");
    print("A kisebbik oldal az 'a' oldal (" + a.toString() + ")");
  }

  if (a == b) {
    print("A négyszög négyzet!");
  } else {
    print("A négyszög téglalap!");
  }

  int kerulet = 2 * a + 2 * b;
  int terulet = a * b;
  print("A négyzet kerülete: " + kerulet.toString());
  print("A négyzet területe: " + terulet.toString());

  //3. feladat
  if (a + b > c && a + c > b && b + c > a) {
    print("Alkothat háromszöget!");
  } else {
    print("Nem alkothat háromszöget!");
  }

  //4. feladat
  bool prime = true;
  int abc = 0;
  if (abc.toString().length != 3) {
    abc = int.parse(a.toString()[0] + b.toString()[0] + c.toString()[0]);
  } else {
    abc = int.parse(a.toString() + b.toString() + c.toString());
  }

  print(abc);
  print(sqrt(abc) % 1 == 0 ? "Négyzetszám!" : "Nem négyzetszám!");

  for (int i = 2; i < abc; i++) {
    if (abc % i == 0) {
      prime = false;
      break;
    }
  }

  print(prime ? "Prím szám!" : "Nem prímszám!");
}

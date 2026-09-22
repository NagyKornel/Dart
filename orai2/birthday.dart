import 'dart:io';

void main() {
  int? szam = int.parse(stdin.readLineSync()!);
  int db = 0;
  do {
    print("Happy birthday!");
    print("Happy birthday to you!");
    db++;
  } while (db < szam);
}

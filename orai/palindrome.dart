import 'dart:io';

void main() {
  String? szoveg = stdin.readLineSync()!;
  String reversed = szoveg.split('').reversed.join('');
  if (szoveg == reversed) {
    print("A " + szoveg + " szó palindróm!");
  } else {
    print("A " + szoveg + " szó nem palindróm!");
  }
}

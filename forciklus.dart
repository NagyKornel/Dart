import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print("-----1-----");
  print("Kérek egy egész számot");
  int? szam1 = int.parse(stdin.readLineSync()!);

  print("Kérek mégegy egész számot");
  int? szam2 = int.parse(stdin.readLineSync()!);
  int? kis = 0;
  int? nagy = 0;
  if (szam1 < szam2) {
    kis = szam1;
    nagy = szam2;
  } else {
    kis = szam2;
    nagy = szam1;
  }

  for (int i = kis; i <= nagy; i++) {
    i % 2 == 0 ? print("${i} páros!") : print("${i} páratlan!");
  }
  print("-----2-----");
  List<String> uefa2024euro = [
    "Spain",
    "Germany",
    "Portugal",
    "France",
    "Netherlands",
    "Turkey",
    "England",
    "Switzerland",
  ];
  for (int i = 0; i < uefa2024euro.length; i++) {
    print("$i: ${uefa2024euro[i]}");
  }
  for (int i = 0; i < uefa2024euro.length; i++) {
    for (int j = i + 1; j < uefa2024euro.length; j++) {
      print("${uefa2024euro[i]} - ${uefa2024euro[j]}");
    }
  }
  print("-----3-----");
  print("Kérek egy egész számot");
  int szam = int.parse(stdin.readLineSync()!);
  int ossz = 0;

  List<String> lista = szam.toString().split('');
  lista.asMap().forEach((index, value) => ossz += int.parse(value));
  print("A számjegyek átlaga: ${(ossz / lista.length).toStringAsFixed(2)}");

  print("-----4-----");
  print("Kérek egy egész számot");
  int felbontando = int.parse(stdin.readLineSync()!);
  List<String> felbontott = felbontando.toString().split('');
  felbontott.asMap().forEach((index, value) => print(pow(int.parse(value), 2)));

  print("-----5-----");
  print("Kérek egy szöveget!");
  String szoveg = stdin.readLineSync()!;

  List<String> maganhangzok = [
    "a",
    "e",
    "u",
    "i",
    "o",
    "ö",
    "ü",
    "ó",
    "ő",
    "ú",
    "á",
    "ű",
    "í",
  ];

  String megtart = "";

  for (int i = 0; i < szoveg.length; i++) {
    if (!maganhangzok.contains(szoveg[i])) {
      megtart += szoveg[i];
    }
  }
  print(megtart);

  print("-----6-----");
  print("Kérek egy szöveget!");
  String szoveg7 = stdin.readLineSync()!;
  List<String> lista35 = szoveg7.split('');
  for (var l in lista35) {
    print("${l} - ${utf8.encode(l)}");
  }

  print("-----7-----");
  for (int i = 1; i < 51; i++) {
    if (i % 3 == 0)
      print("Fizz!");
    else if (i % 5 == 0)
      print("Buzz!");
    else if (i % 3 == 0 && i % 5 == 0)
      print("FizzBuzz!");
    else
      print("${i}");
  }
}

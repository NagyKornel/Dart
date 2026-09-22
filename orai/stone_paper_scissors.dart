import 'dart:io';

void main() {
  print("1. Rock\n2. Paper\n3.Scissors");
  int? p1 = int.parse(stdin.readLineSync()!);
  print("1. Rock\n2. Paper\n3.Scissors");
  int? p2 = int.parse(stdin.readLineSync()!);

  if (p1 == p2)
    print("The game is a tie!");
  else if (p1 == 1 && p2 == 3)
    print("The first player wins!");
  else if (p1 == 2 && p2 == 1)
    print("The first player wins!");
  else if (p1 == 3 && p2 == 2)
    print("The first player wins!");
  else if (p1 == 1 && p2 == 2)
    print("The second player wins!");
  else if (p1 == 2 && p2 == 3)
    print("The second player wins!");
  else if (p1 == 3 && p2 == 1)
    print("The second player wins!");
}

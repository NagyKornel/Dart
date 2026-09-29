void main() {
  int cntr = 1;
  do {
    if (cntr % 3 != 0 && cntr % 5 != 0) {
      print(cntr);
    } else if (cntr % 3 != 0) {
      print(cntr);
    } else if (cntr % 5 != 0) {
      print(cntr);
    } else {
      continue;
    }
    cntr++;
  } while (cntr < 100);
}

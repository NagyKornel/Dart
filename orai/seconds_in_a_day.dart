void main() {
  int currentHours = 14;
  int currentMinutes = 34;
  int currentSeconds = 42;

  int remainingHours = 24 - currentHours;
  int remainingMinutes = 60 - currentMinutes;
  int remainingSeconds = 60 - currentSeconds;

  int remainingFullTime =
      (remainingHours * 60 * 60) + (remainingMinutes * 60) + remainingSeconds;

  print(
    "A maradék másodpercek száma a napból: " + remainingFullTime.toString(),
  );
}

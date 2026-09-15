void main() {
  // 1. feladat
  print("Vasvári Pál Gazdasági és Informatikai Technikum");

  // 2. feladat
  var iranyitoszam = 6720;
  var utca = "Szeged, Gutenberg u.";
  var telepules = "Szeged";
  var hazszam = 11;
  print(
    "$iranyitoszam, $telepules, $utca, $hazszam Vasvári Pál Gazdasági és Informatikai Technikum",
  );

  // 3. feladat
  var atl = 28;
  var ossz = 0;
  ossz = atl * 4;
  for (var i = 0; i < 4; i++) {
    ossz += atl * 3;
  }
  print("Az össz létszám: $ossz fő");
}

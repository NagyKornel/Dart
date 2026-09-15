void main() {
  String falvedo =
      "Hol hit, ott szeretet, hol szeretet, ott béke, hol béke, ott áldás, hol áldás, ott Isten, hol Isten, ott szükség nincsen.";
  print(falvedo);
  print(falvedo.toLowerCase());
  print(falvedo.toUpperCase());
  print(falvedo.trim());
  print(falvedo.replaceAll(" ", "-"));
  print("... " + falvedo.substring(5));
  print(falvedo.substring(0, 3).codeUnits);
  print(falvedo.substring(10) + "... ");
}

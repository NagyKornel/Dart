import "dart:io";

void main() {
    File f = File("erettsegi/bedat.txt");
    List<String> sorok = f.readAsLinesSync();

    List<Map<String, dynamic>> datas = [];

    for (int i = 0; i < sorok.length; i++) {
        List<String> adatok = sorok[i].split(" ");

        datas.add({
            "kod": adatok[0],
            "ido": adatok[1],
            "szam": int.parse(adatok[2]),
        });
    }

    print("2. feladat");
    print("Az első tanuló " + datas.first["ido"] + "-kor lépett be a főkapun.");
    print("A utolsó tanuló " + datas.last["ido"] + "-kor lépett ki a főkapun.");
    
    File f2 = File("erettsegi/kesok.txt");
    int minido = 7*60+50;
    int maxido = 8*60+15;

    for (int i = 0; i < datas.length; i++){
        if (int.parse(datas[i]["ido"].split(":")[0]) * 60 + int.parse(datas[i]["ido"].split(":")[1]) >= minido && int.parse(datas[i]["ido"].split(":")[0]) * 60 + int.parse(datas[i]["ido"].split(":")[1]) <= maxido){
            f2.writeAsStringSync(datas[i].toString() + "\n", mode: FileMode.append);
        }
    }

    int db = 0;
    for (int i = 0; i < datas.length; i++){
        if (datas[i]["szam"] == 3){
            db++;
        }
    }
    print("4. feladat");
    print("A menzán aznap " + db.toString() + " tanuló ebédelt.");

    Set<String> kodok = {};
    kodok.addAll(datas.where((e) => e["szam"] == 4).map((e) => e["kod"]));

    print("5. feladat");
    print("Aznap "+ kodok.length.toString() + " tanuló kölcsönzött a könyvtárban.");
    print(db > kodok.length ? "Többen voltak, mint a menzán." : "Nem voltak többen, mint a menzán.");

    Set<String> kilepett = {};
    Set<String> diakok = {};

    for (int i = 0; i < datas.length; i++) {
        int ido = int.parse(datas[i]["ido"].split(":")[0]) * 60 +
        int.parse(datas[i]["ido"].split(":")[1]);

        String kod = datas[i]["kod"];

        if (ido >= 645 && ido <= 660 && datas[i]["szam"] == 2) {
            kilepett.add(kod);
        }

        if (ido => 650 && ido <= 660 &&
            datas[i]["szam"] == 1 &&
            !kilepett.contains(kod)) {
            diakok.add(kod);
        }
    }

    print("6. feladat");
    print("Az érintett tanulók:");
    print(diakok.join(" "));
}
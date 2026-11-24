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
    String ido = datas.first["ido"].split(":")[0];
    print(ido);
}
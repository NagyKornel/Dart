import 'dart:io';

void main(){
    File file = File("file handling/test.txt");
    if(file.existsSync()){
        String content = file.readAsStringSync();
        List<String> lines = content.split("\n").toList();
        print("-----------------------------");
        print(content);
        print("-----------------------------");
        print(lines[0]);
        print("-----------------------------");
        print(lines.last);
        print("-----------------------------");
    }
    File file2 = File("file handling/test.csv");
    if(file2.existsSync()){
        String content2 = file2.readAsStringSync();
        List<String> lines2 = content2.split("\n").toList();
        print(content2);
        print("-----------------------------");
    }
    File file3 = File("file handling/school.txt");
    file3.writeAsStringSync("Vasvári Pál Gazdasági és Informatikai Technikum\n");
    file3.writeAsStringSync("6722\n");
    file3.writeAsStringSync("Gutenberg utca 11.\n");
    file3.writeAsStringSync("Szeged\n");

}
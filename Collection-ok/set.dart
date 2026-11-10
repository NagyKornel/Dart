void main() {
    Set <String> week = {'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'};
    print(week);
    print(week.first);
    print(week.last);
    print(week.length == 0 ? "Üres" : "Nem üres");
    print(week.length);
    print(week.contains('szerda') ? "van": "nincs");
    print(week.contains('Wednesday') ? "van": "nincs");

    week.addAll(["workday", "weekend", "holiday", "public holiday", "bank holiday", "national holiday", "religious holiday", "federal holiday", "school holiday", "company holiday", "floating holiday", "seasonal holiday", "observed holiday", "half-day", "flexible day", "personal day", "sick day", "leave of absence", "vacation day", "remote workday"]);

    for (String d in week) {
        print(d);
    }

    Set <String> schoolDays = {'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'};
    print(week.length);
    print(schoolDays.length);

    List<int> indexes = [2, 3, 7, 11, 13];
    for( int i = 0; i < week.length; i++){
        if (indexes.contains(i)) {
            print(week.elementAt(i));
        }
    }
    for( int i = 0; i < schoolDays.length; i++){
        if (indexes.contains(i)) {
            print(schoolDays.elementAt(i));
        }
    }

}
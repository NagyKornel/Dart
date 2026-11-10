void main(){
    List<int> fizzbuzz = [];
    for(int i = 1; i <= 100; i++){
        if(i % 3 == 0 && i % 5 == 0){
            fizzbuzz.add(i);
        } else if(i % 3 == 0){
            fizzbuzz.add(i);
        } else if(i % 5 == 0){
            fizzbuzz.add(i);
        }
    }
    print(fizzbuzz);

    List<String> oddEven = [];
    for (int i = 0; i < fizzbuzz.length; i++) {
        if (fizzbuzz[i] % 2 == 0) {
            oddEven.add("Even");
        } else {
            oddEven.add("Odd");
        }
    }
    print(oddEven);

    Set<int> oddSet = {};
    for (int i = 0; i < fizzbuzz.length; i++){
        if (fizzbuzz[i] % 2 != 0) {
            oddSet.add(fizzbuzz[i]);
        }
    }
    print(oddSet);

    Map<int, List<String>> fizzBuzzMap = {};
    for (int i = 1; i < 101; i++) {
        fizzBuzzMap[i] = ["${i},"+"${i % 2 == 0 ? "Even" : "Odd"}," +"${i % 3 == 0 ? "Fizz" : ""}${i % 5 == 0 ? "Buzz" : ""}"];
    }
    print(fizzBuzzMap);
}
void main() {
    print(sum([1.0, 2.0, 3.0, 4.0, 5.0, -5.0, -1.0])); // 
    print(oddOnesOut([1, 2, 1, 2, 1, 3])); // [2, 2]
    print(flattenAndSort([[1,2,3],[4,5]])); // [1, 2, 3, 4, 5]
    print(duplicateCount("abcde")); // 0
    print(duplicateCount("aabbcde")); // 2
    print(duplicateCount("aA11")); // 2
}

// 1. feladat
num sum(List<double> nums){
    double sum = 0;
    for(int i = 0; i < nums.length; i++){
        sum += nums[i];
    }
    return sum;
}

// 2. feladat
List<int> oddOnesOut(List<int> arr){
    Map<int, int> count = {};
    for (int i= 0; i < arr.length; i++){
        if (count.containsKey(arr[i])){
            count[arr[i]] = count[arr[i]]! + 1;
        } else {
            count[arr[i]] = 1;
        }
    }

    // print(count);
    if (count.values.any((x) => x % 2 != 0)){
        arr.removeWhere((x) => count[x]! % 2 != 0);
    }

    return arr;
}

// 3. feladat
List<int> flattenAndSort(List<List<int>> arr) {
    List<int> flat = [];
    for (int i = 0; i < arr.length; i++){
        flat.addAll(arr[i]);
    }
    flat.sort();
    return flat;
}

// 4. feladat
int duplicateCount(String text){
    Map<String, int> count = {};
    for (int i = 0; i < text.length; i++){
        if(count.containsKey(text[i].toLowerCase())){
            count[text[i].toLowerCase()] = count[text[i].toLowerCase()]! + 1;
        }
        else{
            count[text[i].toLowerCase()] = 1;
        }
    }
    return count.values.where((x) => x > 1).length;
}
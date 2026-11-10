void main() {
    Map<String, List<String>> weekMap = {
        'Monday': ["workday", "remote workday", "national holiday"],
        'Tuesday': ["workday", "remote workday"],
        'Wednesday': ["workday", "remote workday"],
        'Thursday': ["workday", "remote workday"],
        'Friday': ["workday", "remote workday"],
        'Saturday': ["weekend", "holiday"],
        'Sunday': ["weekend", "holiday"]
    };
    
    weekMap['Wednesday'] = ["workday", "remote workday", "national holiday"];
    weekMap['Saturday'] = [];
    weekMap.removeWhere((key, value) => value.isEmpty);

    weekMap.forEach((key, value) {
        print('$key: $value');
    });

}


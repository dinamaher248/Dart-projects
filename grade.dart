import 'dart:io';

void main() {
  print(
      "-----------------------------welcome to the Grade System-------------------------------");
  String? letter;

  do {
    print("please Enter your Name :");
    String? name = stdin.readLineSync();
    print("please Enter your degree :");
    int? degree = int.parse(stdin.readLineSync()!);
    if (degree >= 0 && degree < 50) {
      print("$name's grade is F ");
    } else if (degree >= 50 && degree < 70) {
      print("$name's grade is D ");
    } else if (degree >= 70 && degree < 80) {
      print("$name's grade is C ");
    } else if (degree >= 80 && degree < 90) {
      print("$name's grade is B");
    } else if (degree >= 90 && degree <= 100) {
      print("$name's grade is A ");
    } else {
      print("Error Number of grade please choose between 0 to 100");
    }
    print("Do You Want to check another student grade ? ");
    letter = stdin.readLineSync();
  } while (letter != "n");
}

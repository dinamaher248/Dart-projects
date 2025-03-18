import 'dart:io';

void main() {
  print(
      "-----------------------------welcome to the Magic Game-------------------------------");

  print("please Enter your year of birth :");
  int? year = int.parse(stdin.readLineSync()!);
  int? age = 2025 - year;
  if (age > 10) {
    int index_G1 = 1;
    int index_G2 = 2;
    int index_G3 = 4;
    int index_G4 = 8;
    int index_G5 = 16;
    int sum = 0;
    print("Please Pick Number between 1 to 30 in your thinking ");
    print("Do You Picked ? :) ");
    print("Yes(y) | NO(n)");
    String? letter = stdin.readLineSync();
    if (letter == "y") {
      print("Please Look at the groups and answer about the questions  ");
      print("the first group (G1)");
      print("--------------");
      print("$index_G1|3|5\n");
      print("7|9|11\n");
      print("13|15|17\n");
      print("19|21|23\n");
      print("25|27|29\n");
      print("--------------");
      print("Is the number exist in this group ?");
      print("Yes(y) | NO(n)");
      letter = stdin.readLineSync();
      if (letter == "y") {
        sum += index_G1;
      }
      print("the second group (G2)");
      print("--------------");
      print("$index_G2|3|6\n");
      print("7|10|11\n");
      print("14|15|18\n");
      print("19|21|23\n");
      print("26|27|30\n");
      print("--------------");

      print("Is the number exist in this group ?");
      print("Yes(y) | NO(n)");
      letter = stdin.readLineSync();
      if (letter == "y") {
        sum += index_G2;
      }
      print("the third group (G3)");
      print("--------------");
      print("$index_G3|5|6\n");
      print("7|12|13\n");
      print("14|15|20\n");
      print("21|22|23\n");
      print("28|29|30\n");
      print("--------------");
      print("Is the number exist in this group ?");
      print("Yes(y) | NO(n)");
      letter = stdin.readLineSync();
      if (letter == "y") {
        sum += index_G3;
      }
      print("the fourth group (G4)");
      print("--------------");
      print("$index_G4|9|10\n");
      print("11|12|13\n");
      print("14|15|24\n");
      print("25|26|27\n");
      print("28|29|30\n");
      print("--------------");
      print("Is the number exist in this group ?");
      print("Yes(y) | NO(n)");
      letter = stdin.readLineSync();
      if (letter == "y") {
        sum += index_G4;
      }
      print("the fifth group (G5)");
      print("--------------");
      print("$index_G5|17|18\n");
      print("19|20|21\n");
      print("22|23|24\n");
      print("25|26|27\n");
      print("28|29|30\n");
      print("--------------");
      print("Is the number exist in this group ?");
      print("Yes(y) | NO(n)");
      letter = stdin.readLineSync();
      if (letter == "y") {
        sum += index_G5;
      }
      if (sum > 30 || sum < 1) {
        print("Plese try again and thinking of number between 1 to 30");
      } else
        print("The number that you Thinking is $sum ");
    } else {
      print("Plese try again and thinking of number between 1 to 30");
    }
  }
}

import 'dart:io';
import 'dart:math';

void main() {
  print(
      "-----------------------------welcome to the calc system-------------------------------");
  String? letter;
  int correctCount = 0;
  int wrongCount = 0;
  do {
    Random x = Random();
    int num1 = x.nextInt(12) + 1, num2 = x.nextInt(13), sum;
    print("$num1 + $num2 = ");
    sum = int.parse(stdin.readLineSync()!);
    if (sum == num1 + num2) {
      print("correct answer");
      correctCount++;
    } else {
      print("Wrong answer\n correct answer is ${num1 + num2}");
      wrongCount++;
    }

    print("Do You Want to retry ? ");
    letter = stdin.readLineSync();
  } while (letter != "n");
      print("The count of your correct answer is $correctCount");
      print("The count of your Wrong answer is $wrongCount");

}

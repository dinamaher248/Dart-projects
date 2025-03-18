import 'dart:io';
import 'dart:math';

void main() {
  print("-----------------------------------------------");
  List<String> names = [];
  String? letter;
  int salary;
  int sum = 0;
  int MaxSalary = 0;
  do {
    print("Enter doctor name ");
    names.add(stdin.readLineSync()!);
    print("Do You Want to Enter a new doctor ? ");
    letter = stdin.readLineSync()!;
  } while (letter != "n");

  if (letter == "n") {
    for (int i = 0; i < names.length; i++) {
      print("Enter the salary of doctor ${names[i]} : ");
      salary = int.parse(stdin.readLineSync()!);
      sum += salary;
      MaxSalary = max(MaxSalary, salary);
    }
  }
  print("The sum of salary's doctors is : $sum ");
  print("The avg of salary's doctors is : ${sum / names.length} ");
  print("The Maximum of salary's doctors is : $MaxSalary");
}

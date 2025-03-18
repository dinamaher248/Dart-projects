import 'dart:io';
import 'dart:math';

void main() {
  print("-----------------------------------------------");
  Map<String, int> doctors = {};
  //{ key(name of doctor) : value(salary)}
  String name;
  String? letter;
  int salary;
  int sum = 0;
  int MaxSalary = 0;
  do {
    print("Enter doctor name : ");
    name = stdin.readLineSync()!;
    print("Enter The salary doctor $name : ");
    salary = int.parse(stdin.readLineSync()!);
    doctors[name] = salary;
    print("Do You Want to Enter a new doctor ? ");
    letter = stdin.readLineSync()!;
  } while (letter != "n");

  if (letter == "n") {
    for (int i = 0; i < doctors.length; i++) {
      sum += salary;
      MaxSalary = max(MaxSalary, salary);
    }
  }
  print("The sum of salary's doctors is : $sum ");
  print("The avg of salary's doctors is : ${sum / doctors.length} ");
  print("The Maximum of salary's doctors is : $MaxSalary");
}

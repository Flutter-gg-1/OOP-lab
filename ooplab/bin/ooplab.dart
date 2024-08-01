import 'dart:io';
import 'books_function.dart';
import 'events_function.dart';
import 'employeefunction.dart';
import 'memberfunction.dart';

void main() {
  print("--------Welcome Admin--------");
  print("What do you want to do?");
  print("1-Edit books \n 2-Edit empolyees \n 3-Edit events \n 4-Edit members");
  String? choice = stdin.readLineSync();
  while (choice != 'e') {
    switch (choice) {
      case '1':
        books();
      case '2':
      employeefunction();
      case '3':
        events();
      case '4':
      memberfunction();
      case 'e':
      default:
        print("Please try again");
        choice = stdin.readLineSync();
    }
  }
  print("--------GoodBye--------");
  exit(0);
}

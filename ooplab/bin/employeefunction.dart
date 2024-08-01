import 'dart:io';

import 'employee.dart';
import 'ooplab.dart';

employeefunction() {
  print("Choose option \n 1-Add employee \n 2-display  4-b to go back");
  String? eventOption = stdin.readLineSync();
  Employee emp = Employee();
  while (eventOption != 'b') {
    switch (eventOption) {
      case '1':
        emp.addEmployee();

      case '2':
        emp.displayinfo();
     
      default:
        print("Please try again");
        eventOption = stdin.readLineSync();
    }
  }
  main();
}
import 'dart:io';

class Employee {
  List employees = [];

  Employee();

  addEmployee() {
    print("Add employee ID");
    int id = int.parse(stdin.readLineSync()!);
    print("Add employee name");
    String name = stdin.readLineSync()!;
    print("Add employee email");
    String employeeEmail = stdin.readLineSync()!;
    print("Add employee poisiton");
    String employeePosition = stdin.readLineSync()!;

    Map<String, dynamic> employeeMap = {
      "id": id,
      "Name": name,
      "Email": employeeEmail,
      "position": employeePosition,
    };

    employees.add(employeeMap);
    print("Employee added successfully");
    print(employees);
    stdin.readLineSync();
  }

  displayinfo() {
    for (var element in employees) {
      print("-----ID task ${element["id"]}");
      print("Name: ${element["Name"]}");
      print("Completion: ${element["Email"]}");
      print("Date Add: ${element["position"]}");
      print("-------------------------------");
      print('\n');
    }
  }
}

import 'dart:io';

class Employee {
  int? id;
  String? name;
  String? email;
  String? position;

  Employee(
      {required this.id,
      required this.name,
      required this.email,
      required this.position});

  displayinfo() {
    print("------  Employee information ------");
    print("------  Id: $id");
    print("------  Name: $name");
    print("------  Email: $email");
    print("------  Position: $position");
  }

  addEmployee() {
    print("Add employee ID");
    int id = int.parse(stdin.readLineSync()!);
    print("Add employee name");
    String name = stdin.readLineSync()!;
    print("Add employee email");
    String employeeEmail = stdin.readLineSync()!;
    print("Add employee poisiton");
    String employeePosition = stdin.readLineSync()!;
    List employees = [];
    Map<String, dynamic> employeeMap = {
      "id": id,
      "name_task": name,
      "completion": employeeEmail,
      "date": employeePosition,
    };

    employees.add(employeeMap);
    print("Employee added successfully");
    print(employees);
    stdin.readLineSync();
  }
}

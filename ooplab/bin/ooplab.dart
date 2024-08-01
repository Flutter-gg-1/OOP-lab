import 'dart:io';
import 'dart:math';

class Events {
  //At
  //Attrabutes
  String? name = stdin.readLineSync();
  String? id = "${Random().nextInt(999)}"; 
  String? supervisor = stdin.readLineSync();
  String? date = stdin.readLineSync();
  List<String> partispentes = [];

  //constactor
  Events({
    required this.name,
    required this.id,
    required this.supervisor,
    required this.date,
    required this.partispentes,
  });
  List<Map<String, dynamic>> enventListMap = [{}];

  //functions
  addEvent({required id}) {
    List<Map<String, dynamic>> enventlist = [
      {
        "name": name,
        "id": id,
        "supervisor": supervisor,
        "date": date,
        "partispentes": partispentes,
      }
    ];
    addEvent.add(enventlist);
  print("* account add successfully *");
  print("\n");
  print("your account number is ***** $accountNumber *****");

  stdin.readLineSync(); //for new line after display
}

  }


}

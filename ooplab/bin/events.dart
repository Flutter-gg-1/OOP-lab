import 'dart:io';
import 'dart:math';

//Event class display events with it is name,id,date and supervisor name
class Events {
  //Attrabutes
  String? name = stdin.readLineSync();
  String? id = "${Random().nextInt(999)}";
  String? supervisor = stdin.readLineSync();
  String? date = stdin.readLineSync();

  //constactor
  Events({
    required this.name,
    required this.id,
    required this.supervisor,
    required this.date,
  });
  List<Map<String, dynamic>> enventListMap = [{}];

  //functions
  //this function will add new event
  addEvent() {
    Map<String, dynamic> envent = {
      "name": name,
      "id": id,
      "supervisor": supervisor,
      "date": date,
    };
    enventListMap.add(envent);
    print("* Event add successfully *");
    print("\n");
    print("your ID is  $id ");

    stdin.readLineSync(); //for new line after display
  }

  //this function will display all event
  displayEvent({required List<Map<String, dynamic>> eventDisplay}) {
    for (var element in eventDisplay) {
      print("                   All Events      ");
      print(" Event number is ${element["name"]}");
      print(" ID is ${element["id"]}");
      print(" supervisor is ${element["supervisor"]}");
      print(" Date of event is ${element["date"]}");
    }
    stdin.readLineSync(); //for new line after display
  }

//this function will remove event by event id
  removeEvent({required String eventId}) {
    Map<String, dynamic> event = {};
    for (var element in enventListMap) {
      if (element["id"] == eventId) {
        event = element;
        break;
      }
    }
    //to ensure the number enterd founds
    if (event.isNotEmpty) {
      enventListMap.remove(event); // this function remove id
    } else {
      print("Event number $eventId not found! ");
    }
    stdin.readLineSync(); //for new line after display
  }
}
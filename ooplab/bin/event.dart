import 'dart:io';

  List<Map<String, dynamic>> enventListMap = [{}];
//Event class display events with it is name,id,date and supervisor name
class Events {
  //Attrabutes
  String? name;
  String? id;
  String? supervisor;
  String? date;

  //constactor
  Events({
    this.name,
    this.id,
    this.supervisor,
    this.date,
  });

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
  removeEvent( String eventId) {
    Map<String, dynamic> event = {};
    for (var element in enventListMap) {
      if (element["id"] == eventId) {
        event = element;
        break;
      }
    }
    //to ensure the number enterd founds
      enventListMap.remove(event); // this function remove id
    stdin.readLineSync(); //for new line after display
  }
}
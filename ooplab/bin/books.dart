class Books{
  //attributes
  String? bookId;
  String? booktitle;
  String? auther;
  String? type;

  //Constructors
  Books({required this.bookId, required this.booktitle,required this.auther, required this.type}){
  }
  //Functions
  void addBook(){
 Map<String, dynamic> book = {
      "name": booktitle,
      "id": bookId,
      "auther": auther,
      "type": type,
    };
    enventListMap.add(envent);


    print("* book added successfully *");
    print("\n");
    print("your ID is  $bookId ");

    stdin.readLineSync(); //for new line after display
  }
    void editBook(){

  }

    void edeleteBook(){

  }
}
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

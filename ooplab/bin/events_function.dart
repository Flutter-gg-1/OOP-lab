import 'dart:io';
import 'dart:math';
import 'event.dart';
import 'ooplab.dart';

events() {
  print(
      "Choose option \n 1-Add an event \n 2-display all current event \n 3-Delete an event 4-b to go back");
  String? eventOption = stdin.readLineSync();
  while (eventOption != 'b') {
    switch (eventOption) {
      case '1':
        Random random = Random();
        String eventId = random.nextInt(10000).toString();
        print("Enter event name");
        String? eventName = stdin.readLineSync();
        print("Enter supervisor name");
        String? supervisor = stdin.readLineSync();
        print("Enter event date");
        String? date = stdin.readLineSync();
        Events event = Events(
            name: eventName, id: eventId, supervisor: supervisor, date: date);
        event.addEvent();
      case '2':
        Events event = Events();
      case '3':
        print("Enter event ID");
        String eventId = stdin.readLineSync()!;
        Events event = Events();
        event.removeEvent(eventId);
      default:
        print("Please try again");
        eventOption = stdin.readLineSync();
    }
  }
  main();
}

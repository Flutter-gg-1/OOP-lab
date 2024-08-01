
import 'dart:io';
import 'dart:math';
import 'ooplab.dart';

class Member {

  List memberlist = [];
// constructor
  Member();
// function to add member
  void addMember() {
    print("Enter your name: ");
    String? name = stdin.readLineSync()!;
  int? id = Random().nextInt(999999);
  print("Enter your phone: ");
  String? phone = stdin.readLineSync()!;
  DateTime? startDate = DateTime.now();
    Map<dynamic, dynamic> members = {
      "name": name,
      "id": id,
      "phone": phone,
      "startDate": startDate,
    };
    memberlist.add(members);
    main();
  }
   // function to dispaly member
   displaymember(){
    for (var element in memberlist) {
      print(element.values);
    }
    main();
   }
   
}

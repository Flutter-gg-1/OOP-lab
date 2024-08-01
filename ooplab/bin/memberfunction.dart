import 'dart:io';
import 'members.dart';
import 'ooplab.dart';

memberfunction() {
  print("Choose option \n 1-Add member \n 2-display");
  String? memberOption = stdin.readLineSync();
  Member memb = Member();
  while (memberOption != 'b') {
    switch (memberOption) {
      case '1':
        memb.addMember();
        break;
      case '2':
        memb.displaymember();
     
      default:
        print("Please try again");
        memberOption = stdin.readLineSync();
    }
  }
  main();
}
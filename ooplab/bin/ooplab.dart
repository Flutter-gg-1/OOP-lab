
import 'dart:io';

void main(List<String> arguments) {
  print("--------Welcome Admin--------");
  print("What do you want to do?");
  print("1-Edit books \n 2-Edit empolyees \n 3-Edit members \n 4-Edit events");
  String? choice = stdin.readLineSync(); 
  while(choice != 'e'){
      switch (choice){
        case '1':
        print('somthing');
        choice ='e';
        case '2':
        //do somthing
        case '3':
        //do somthing
        case '4':
        //do somthing
        case 'e':
        default:
      print("Please try again");
      choice = stdin.readLineSync();   }
    }
    print("--------GoodBye--------");
    exit(0);
}

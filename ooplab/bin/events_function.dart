import 'dart:io';
import 'dart:math';
import 'books.dart';
import 'ooplab.dart';
events(){
            print("Choose option \n 1-Add an event \n 2-display all current event \n 3-Delete an event 4-b to go back");
          String? Option = stdin.readLineSync(); 
          while(Option != 'b'){
              switch (Option){
              case '1':
              Random random = Random();
              String bookId =random.nextInt(10000).toString(); 
              print("Enter event name");
              String? booktitle = stdin.readLineSync(); 
              print("Enter book auther");
              String? auther = stdin.readLineSync(); 
              print("Enter book type");
              String? type = stdin.readLineSync(); 
              Books book = Books(bookId: bookId, booktitle: booktitle, auther: auther, type: type);
              book.addBook();
              case '2':
              //do somthing
              case '3':
              //do somthing
              default:
            print("Please try again");
            Option = stdin.readLineSync();   }
          }
          main();

}
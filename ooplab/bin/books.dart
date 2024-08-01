import 'dart:io';
import 'ooplab.dart';
class Books{
  //attributes
  String? bookId;
  String? booktitle;
  String? auther;
  String? type;
List<Map<String, dynamic>> booksListMap = [{}];
  //Constructors
  Books({this.bookId, this.booktitle, this.auther, this.type}){
  }
  //Functions
  void addBook(){
 Map<String, dynamic> book = {
      "name": booktitle,
      "id": bookId,
      "auther": auther,
      "type": type,
    };
    booksListMap.add(book);


    print("* book added successfully *");
    print("\n");
    print("your ID is  $bookId ");
    main();

    stdin.readLineSync(); //for new line after display
  }

    void displayBook() {
    for (var element in booksListMap) {
      print("                   All books      ");
      print(" book id is ${element["id"]}");
      print(" Title is ${element["name"]}");
      print(" auther is ${element["auther"]}");
      print(" type is ${element["type"]}");
      main();

    }
    stdin.readLineSync(); 
  }

    void deleteBook(){
      //delete book
  }
}
import 'dart:io';
import 'ooplab.dart';
import 'lists.dart';
class Books{
  //attributes
  String? bookId;
  String? booktitle;
  String? auther;
  String? type;
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
    print("                   All books      ");
    for (var element in booksListMap) {
      print(" book id is ${element["id"]}");
      print(" Title is ${element["name"]}");
      print(" auther is ${element["auther"]}");
      print(" type is ${element["type"]}");
      

    }
    stdin.readLineSync();
     main();
  }

    void deleteBook(String id){
    for (var element in booksListMap) {
      if (element["id"] == id) {
        booksListMap.remove(element);
  }
    }
        print("* book deleted successfully *");
    main();
    }
}
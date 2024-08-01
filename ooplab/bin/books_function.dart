import 'dart:io';
import 'dart:math';
import 'books.dart';
import 'ooplab.dart';

books(){

            print("Choose option \n 1-Add a book \n 2-display all books \n 3-Delete a book 4-b to go back");
          String? bookOption = stdin.readLineSync(); 
          while(bookOption != 'b'){
              switch (bookOption){
              case '1':
              Random random = Random();
              String bookId =random.nextInt(10000).toString(); 
              print("Enter book title");
              String? booktitle = stdin.readLineSync(); 
              print("Enter book auther");
              String? auther = stdin.readLineSync(); 
              print("Enter book type");
              String? type = stdin.readLineSync(); 
              Books book = Books(bookId: bookId, booktitle: booktitle, auther: auther, type: type);
              book.addBook();
              case '2':
              Books book = Books();
              book.displayBook();
              case '3': 
            print("Enter book ID");
              String? bookid = stdin.readLineSync();  
              Books book = Books();
              book.deleteBook(bookid!);
              default:
            print("Please try again");
            bookOption = stdin.readLineSync();   }
          }
          main();

}
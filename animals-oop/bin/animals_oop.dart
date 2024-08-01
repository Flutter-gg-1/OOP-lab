// imports
import 'dart:io';
import 'package:animals_oop/models/animal_model.dart';
import 'package:animals_oop/models/bird.dart';
import 'package:animals_oop/models/cat.dart';
import 'package:animals_oop/models/lion.dart';

void main() {
  List myAnimals = [];
  print("----> Welcome to our animals shop ! <----");
  while_loop:
  while (true) {
    print("Enter 0 to exit .....");
    print("Enter 1 to add animal to shop .....");
    print("Enter 2 to view animals .....");
    String? choice = stdin.readLineSync();
    switch (choice) {
      case '0':
        break while_loop;

      case '1':
        animalModel animal1;
        stdout.write("Enter animal name : ");
        String? name = stdin.readLineSync();
        stdout.write("Enter animal type : ");
        String? type = stdin.readLineSync();
        stdout.write("Enter animal limps : ");
        String? limps = stdin.readLineSync();
        stdout.write("Enter animal price : ");
        String? price = stdin.readLineSync();
        stdout.write("Enter animal food : ");
        String? food = stdin.readLineSync();
        switch (type) {
          case 'bird':
            animal1 = Bird(
                name: name!,
                limp: int.parse(limps!),
                price: double.parse(price!),
                food: food!);
            myAnimals.add(animal1);

          case 'cat':
            animal1 = Cat(
                type: "japanese",
                color: 'red',
                catYears: 4,
                name: name!,
                limp: int.parse(limps!),
                price: double.parse(price!),
                food: food!);
            myAnimals.add(animal1);

          case 'lion':
            animal1 = Lion(
                name: name!,
                limp: int.parse(limps!),
                price: double.parse(price!),
                food: food!);
            myAnimals.add(animal1);

          default:
            animal1 = animalModel(
                name: name!,
                limp: int.parse(limps!),
                price: double.parse(price!),
                food: food!);
            myAnimals.add(animal1);
        }
        print("Animal ${animal1.name} is added to shop !");

      case '2':
        for (var animal in myAnimals) {
          animal.makeSound();
        }
    }
  }
}

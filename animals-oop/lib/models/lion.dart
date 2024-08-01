import 'animal_model.dart';

class Lion extends animalModel {
  Lion(
      {required super.name,
      required super.limp,
      required super.price,
      required super.food});

  void makeSound() {
    print('Roar!');
  }
  
  void eat() {
    print('Lion eats meat.');
  }

  void hunt() {
    print('Lion is hunting.');
  }
}

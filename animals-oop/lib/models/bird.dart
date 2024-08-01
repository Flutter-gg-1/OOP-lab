import 'animal_model.dart';

class Bird extends animalModel {
  Bird(
      {required super.name,
      required super.limp,
      required super.price,
      required super.food});

  void makeSound() {
    print('Chirp!');
  }

  void eat() {
    print('Bird eats insects.');
  }

  void fly() {
    print('Bird is flying.');
  }
}

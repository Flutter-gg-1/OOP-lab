import 'animal_model.dart';

class Cat extends animalModel {
  String? type;
  String? color;
  double? catYears;

  Cat(
      {required super.limp,
      required super.name,
      required super.food,
      required super.price,
      required this.catYears,
      required this.color,
      required this.type});

  catInfo(){
    print("\u001b[35;1m Name: $name \nLimp: $limp \nFood: $food \nPrice: $price \nCat Years: $catYears \nColor: $color \nType: $type \u001b[0m");
  }

  void makeSound() {
    print('\n\u001b[47;1m-- Meow~!\u001b[0m');
  }

  void purr() {
    print('\n\u001b[47;1m-- Purr...\u001b[0m');
  }

  void hiss() {
    print('\n\u001b[47;1m-- Hiss!!\u001b[0m');
  }

  void hunt() {
    print('\n\u001b[47;1mT-- he cat is hunting for mice.\u001b[0m');
  }

  void sleep() {
    print('\n\u001b[47;1m-- The cat is sleeping.\u001b[0m');
  }

  void climb() {
    print('\n\u001b[47;1m-- The cat is climbing a tree.\u001b[0m');
  }

  void play() {
    print('\n\u001b[47;1m-- The cat is playing with a ball.\u001b[0m');
  }

  void eat() {
    print('\n\u001b[47;1m-- The cat is eating fish.\u001b[0m');
  }

  void drink() {
    print('\n\u001b[47;1m-- The cat is drinking milk.\u001b[0m');
  }

  void wash() {
    print('\n\u001b[47;1m-- The cat is washing itself.\u001b[0m');
  }
}

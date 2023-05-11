import 'package:lab9/Classes/Machine.dart';

void main() {
  CoffeeMachine test = CoffeeMachine(100, 100, 100, 100);
  print(test.coffeeBeans);
  print(test.milk);
  print(test.water);
  print(test.cash);
  test.makingCoffee();
  print(test.coffeeBeans);
  print(test.milk);
  print(test.water);
  print(test.cash);
}

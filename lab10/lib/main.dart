import 'Classes/Coffee.dart';
import 'Classes/Machine.dart';
import 'Classes/Resources.dart';

void main () {
  CoffeeMachine machine = CoffeeMachine(Resources(200,200,200,150));
  print(machine.resources.coffeeBeans);
  print(machine.resources.water);
  print(machine.resources.milk);
  print(machine.resources.cash);
  Cappuccino cappuccino = Cappuccino();
  machine.makeCoffee(cappuccino);
  print(machine.resources.coffeeBeans);
  print(machine.resources.water);
  print(machine.resources.milk);
  print(machine.resources.cash);


}
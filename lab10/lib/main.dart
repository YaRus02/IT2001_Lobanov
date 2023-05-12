import 'Classes/Coffee.dart';
import 'Classes/Machine.dart';
import 'Classes/Resources.dart';

void main () {
  CoffeeMachine machine = CoffeeMachine(Resources(250,250,250,250));
  print('кофейные зерна: ${machine.resources.coffeeBeans}');
  print('молоко: ${machine.resources.milk}');
  print('вода: ${machine.resources.water}');
  print('деньжата: ${machine.resources.cash}');

  print(machine.resources.cash);

  Cappuccino cappuccino = Cappuccino();
  Espresso espresso = Espresso();
  Americano americano = Americano();

  machine.makeCoffee(cappuccino);
  print('кофейные зерна: ${machine.resources.coffeeBeans}');
  print('молоко: ${machine.resources.milk}');
  print('вода: ${machine.resources.water}');
  print('деньжата: ${machine.resources.cash}');

  machine.makeCoffee(espresso);
  print('кофейные зерна: ${machine.resources.coffeeBeans}');
  print('молоко: ${machine.resources.milk}');
  print('вода: ${machine.resources.water}');
  print('деньжата: ${machine.resources.cash}');

  machine.makeCoffee(americano);
  print('кофейные зерна: ${machine.resources.coffeeBeans}');
  print('молоко: ${machine.resources.milk}');
  print('вода: ${machine.resources.water}');
  print('деньжата: ${machine.resources.cash}');
  
}
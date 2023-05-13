import 'Classes/Coffee.dart';
import 'Classes/Machine.dart';
import 'Classes/Resources.dart';

Future<void> test () async {
  print('start process');
  await Future.delayed(Duration(seconds: 5)).then((_) => print('end process'));
}

void main () async {
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
  await test();
  print('кофейные зерна: ${machine.resources.coffeeBeans}');
  print('молоко: ${machine.resources.milk}');
  print('вода: ${machine.resources.water}');
  print('деньжата: ${machine.resources.cash}');

  machine.makeCoffee(espresso);
  await test();
  print('кофейные зерна: ${machine.resources.coffeeBeans}');
  print('молоко: ${machine.resources.milk}');
  print('вода: ${machine.resources.water}');
  print('деньжата: ${machine.resources.cash}');

  machine.makeCoffee(americano);
  await test();
  print('кофейные зерна: ${machine.resources.coffeeBeans}');
  print('молоко: ${machine.resources.milk}');
  print('вода: ${machine.resources.water}');
  print('деньжата: ${machine.resources.cash}');

}
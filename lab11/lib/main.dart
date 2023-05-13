import 'package:lab11/Classes/AsyncCoffee.dart';
import 'Classes/Coffee.dart';
import 'Classes/Machine.dart';
import 'Classes/Resources.dart';

void main () async {
  CoffeeMachine machine = CoffeeMachine(Resources(450,450,450,450));
  print('кофейные зерна: ${machine.resources.coffeeBeans}');
  print('молоко: ${machine.resources.milk}');
  print('вода: ${machine.resources.water}');
  print('деньжата: ${machine.resources.cash}');

  Cappuccino cappuccino = Cappuccino();
  Espresso espresso = Espresso();
  Americano americano = Americano();

  //machine.makeCoffee(cappuccino);
  await bwater();
  await bcoffee(cappuccino);
  await mixmilkWcoffee();

 // machine.makeCoffee(espresso);
  await bwater();
  await bcoffee(espresso);
  await mixmilkWcoffee();

  //machine.makeCoffee(americano);
  await bwater();
  await bcoffee(americano);
  await mixmilkWcoffee();

}
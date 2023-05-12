import 'Classes/Coffee.dart';
import 'Classes/Machine.dart';
import 'Classes/Resources.dart';

void main () {
  CoffeeMachine machine = CoffeeMachine(Resources(200,200,200,200));
  Cappuccino cappuccino = Cappuccino();
  machine.makeCoffee(cappuccino);
  cappuccino.checkResources();

}
import 'package:lab10/Classes/Coffee_inter.dart';
import 'Resources.dart';

class CoffeeMachine {
  Resources _resources;

  CoffeeMachine(this._resources);

  Resources get resources {
    return _resources;
  }

  set resources(Resources value) => _resources = value;

  bool isAvailable(ICoffee coffee) {
    return _resources.coffeeBeans >= coffee.coffeBeansRequired &&
        _resources.water >= coffee.waterRequired &&
        _resources.milk >= coffee.milkRequired &&
        _resources.cash >= coffee.coffePrice;
  }

  void subtractResources(ICoffee coffee) {
    if (isAvailable(coffee)) {
      _resources.coffeeBeans -= coffee.coffeBeansRequired;
      _resources.water -= coffee.waterRequired;
      _resources.milk -= coffee.milkRequired;
      _resources.cash -= coffee.coffePrice;
    }
  }

  void makeCoffee(ICoffee coffee) {
    if (isAvailable(coffee)) {
      subtractResources(coffee);
      print('Ваш ${coffee.coffeeName} готов!');
    } else {
      print('Не достаточно ресурсов для приготовления ${coffee.coffeeName}!');
    }
  }
}

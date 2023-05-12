import 'Coffee_inter.dart';
import 'Enums.dart';
import 'Resources.dart';

class Cappuccino implements ICoffee {
  final String _name = '';
  int _coffeeBeans = 0;
  int _water = 0;
  int _milk = 0;
  int _cash = 0;

  final Resources _resources = Resources(30, 50, 100, 150);

  CoffeeTypes get type {
    return CoffeeTypes.cappuccino;
  }

  String get coffeeName {
    return 'cappuccino';
  }

  int get coffeBeansRequired {
    return _coffeeBeans = _resources.cash;
  }

  int get waterRequired {
    return _water = _resources.cash;
  }

  int get milkRequired {
    return _milk = _resources.cash;
  }

  int get coffePrice {
    return _cash = _resources.cash;
  }

  Resources checkResources() {
    return _resources;
  }
}

class Espresso implements ICoffee {
  final String _name = '';
  int _coffeeBeans = 0;
  int _water = 0;
  int _milk = 0;
  int _cash = 0;

  final Resources _resources = Resources(30, 50, 100, 150);

  CoffeeTypes get type {
    return CoffeeTypes.espresso;
  }

  String get coffeeName {
    return 'espresso';
  }

  int get coffeBeansRequired {
    return _coffeeBeans = _resources.cash;
  }

  int get waterRequired {
    return _water = _resources.cash;
  }

  int get milkRequired {
    return _milk = _resources.cash;
  }

  int get coffePrice {
    return _cash = _resources.cash;
  }

  Resources checkResources() {
    return _resources;
  }
}

class Americano implements ICoffee {
  final String _name = '';
  int _coffeeBeans = 0;
  int _water = 0;
  int _milk = 0;
  int _cash = 0;

  final Resources _resources = Resources(30, 50, 100, 150);

  CoffeeTypes get type {
    return CoffeeTypes.americano;
  }

  String get coffeeName {
    return 'americano';
  }

  int get coffeBeansRequired {
    return _coffeeBeans = _resources.cash;
  }

  int get waterRequired {
    return _water = _resources.cash;
  }

  int get milkRequired {
    return _milk = _resources.cash;
  }

  int get coffePrice {
    return _cash = _resources.cash;
  }

  Resources checkResources() {
    return _resources;
  }
}

import 'Coffee_inter.dart';
import 'Enums.dart';

class Cappuccino implements ICoffee {

  CoffeeTypes get type {
    return CoffeeTypes.cappuccino;
  }

  @override
  String get coffeeName {
    return 'cappuccino';
  }
  @override
  int get coffeeBeansRequired {
    return 30;
  }

  @override
  int get waterRequired {
    return 30;
  }

  @override
  int get milkRequired {
    return 65;
  }

  @override
  int get coffeePrice {
    return 100;
  }

}

class Espresso implements ICoffee {

  CoffeeTypes get type {
    return CoffeeTypes.espresso;
  }

  @override
  String get coffeeName {
    return 'espresso';
  }

  @override
  int get coffeeBeansRequired {
    return 60;
  }

  @override
  int get waterRequired {
    return 65;
  }

  @override
  int get milkRequired {
    return 0;
  }

  @override
  int get coffeePrice {
    return 110;
  }

}

class Americano implements ICoffee {

  CoffeeTypes get type {
    return CoffeeTypes.americano;
  }

  @override
  String get coffeeName {
    return 'americano';
  }

  @override
  int get coffeeBeansRequired {
    return 45;
  }

  @override
  int get waterRequired {
    return 50;
  }

  @override
  int get milkRequired {
    return 0;
  }

  @override
  int get coffeePrice {
    return 80;
  }

}

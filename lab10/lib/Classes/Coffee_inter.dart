class ICoffee {
  final String _name = '';
  final int _coffeeBeans = 0;
  final int _water = 0;
  final int _milk = 0;
  final int _cash = 0;

  String get coffeeName {
    return _name;
  }

  int get coffeBeansRequired {
    return _coffeeBeans;
  }

  int get waterRequired {
    return _water;
  }

  int get milkRequired {
    return _milk;
  }

  int get coffePrice {
    return _cash;
  }
}

class ICoffee {
  String _name = '';
  int _coffeeBeans = 0;
  int _water = 0;
  int _milk = 0;
  int _cash = 0;

  String get coffeeName{
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

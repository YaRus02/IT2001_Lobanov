import 'Coffee_inter.dart';

Future<void> bwater () {
  print('start process bwater');
  return Future.delayed(Duration(seconds: 5)).then((_) => print('end process bwater'));
}

Future<void> bcoffee (ICoffee coffee) {
  print('start process bcoffe for ${coffee.coffeeName}');
  if(coffee.milkRequired == 0) {
    return Future.delayed(Duration(seconds: 3)).then((_) => print('end process bcoffee for ${coffee.coffeeName}'));
  }else {
    return Future.delayed(Duration(seconds: 3)).then((_) => print('end process bcoffee & whippingMilk for ${coffee.coffeeName}'));
  }
}

Future<void> mixmilkWcoffee () {
  print('start process mixmilkWcoffee');
  return Future.delayed(Duration(seconds: 5)).then((_) => print('end process mixmilkWcoffee'));
}

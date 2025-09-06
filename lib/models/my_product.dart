import 'package:coffee_shop_app/core/strings.dart';
import 'package:coffee_shop_app/models/product.dart';

class MyProduct {
  static List<Product> coffee = [
    Product(id: 1, name: 'Cappuccino', image: 'assets/pngs/cappuccino.png', description: Strings.description, price: 1.0, quantity: 1, rating:4.9),
    Product(id: 2, name: 'Espresso', image: 'assets/pngs/espresso.png', description: Strings.description, price: 2.0, quantity: 1, rating:4.7),
    Product(id: 3, name: 'Americano', image: 'assets/pngs/americano.png', description: Strings.description, price: 2.55, quantity: 1, rating:4.9),
    Product(id: 4, name: 'Latte', image: 'assets/pngs/latte.png', description: Strings.description, price: 4.0, quantity: 1, rating:4.9),
  ];
  static List<Product> dessert = [
    Product(id: 1, name: 'Profiterol', image: 'assets/pngs/profiterol.png', description: Strings.description, price: 1.0, quantity: 1, rating:4.8),
  ];
  static List<Product> cake = [
    Product(id: 1, name: 'Carrot Cake', image: 'assets/pngs/carrot_cake.png', description: Strings.description, price: 20.45, quantity: 1, rating:4.4),
    Product(id: 2, name: 'Chesecake', image: 'assets/pngs/cheesecake.png', description: Strings.description, price: 20.45, quantity: 1, rating:4.4),
    Product(id: 3, name: 'Chocolate Cake', image: 'assets/pngs/chocolate_cake.png', description: Strings.description, price: 20.45, quantity: 1, rating:4.4),
    Product(id: 4, name: 'Red Velvet Cake', image: 'assets/pngs/red_velvet_cake.png', description: Strings.description, price: 20.45, quantity: 1, rating:4.4),
    Product(id: 5, name: 'Triamisu', image: 'assets/pngs/triamisu.png', description: Strings.description, price: 20.45, quantity: 1, rating:4.4),
    Product(id: 6, name: 'Vanilla Cake', image: 'assets/pngs/vanilla_cake.png', description: Strings.description, price: 20.45, quantity: 1, rating:4.4),
  ];
  static List<Product> breackfast = [
    Product(id: 1, name: 'Tuna Salad', image: 'assets/pngs/tuna_salad.png', description: Strings.description, price: 14.22, quantity: 1, rating:4.8),
  ];
  }
//3.23
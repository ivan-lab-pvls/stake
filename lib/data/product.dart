import 'package:hive_flutter/hive_flutter.dart';

import '../features/food/category/category.dart';

part 'product.g.dart';

@HiveType(typeId: 1)
class Product {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final Category category;
  @HiveField(2)
  final String assetPath;
  @HiveField(3)
  final double price;

  const Product(
      {required this.name,
      required this.category,
      required this.assetPath,
      required this.price});

  static final List<Product> productList = [
    const Product(
        name: 'Margherita',
        category: Category.pizza,
        assetPath: 'assets/products/pizza/margherita.png',
        price: 16),
    const Product(
        name: 'Pepperoni',
        category: Category.pizza,
        assetPath: 'assets/products/pizza/pepperoni.png',
        price: 23),
    const Product(
        name: 'Hawaiian',
        category: Category.pizza,
        assetPath: 'assets/products/pizza/hawaiian.png',
        price: 19),
    const Product(
        name: 'Four Cheese',
        category: Category.pizza,
        assetPath: 'assets/products/pizza/four_cheese.png',
        price: 14),
    const Product(
        name: 'Vegetarian',
        category: Category.pizza,
        assetPath: 'assets/products/pizza/vegetarian.png',
        price: 17),
    const Product(
        name: 'BBQ',
        category: Category.pizza,
        assetPath: 'assets/products/pizza/bbq.png',
        price: 20),
    const Product(
        name: 'California Roll',
        category: Category.sushi,
        assetPath: 'assets/products/sushi/california_roll.png',
        price: 22),
    const Product(
        name: 'Philadelphia Roll',
        category: Category.sushi,
        assetPath: 'assets/products/sushi/philadelphia_roll.png',
        price: 15),
    const Product(
        name: 'Unagi Roll',
        category: Category.sushi,
        assetPath: 'assets/products/sushi/unagi_roll.png',
        price: 25),
    const Product(
        name: 'Tempura Roll',
        category: Category.sushi,
        assetPath: 'assets/products/sushi/tempura_roll.png',
        price: 20),
    const Product(
        name: 'Sashimi',
        category: Category.sushi,
        assetPath: 'assets/products/sushi/sashimi.png',
        price: 18),
    const Product(
        name: 'Nigiri',
        category: Category.sushi,
        assetPath: 'assets/products/sushi/nigiri.png',
        price: 22),
    const Product(
        name: 'Carbonara',
        category: Category.pasta,
        assetPath: 'assets/products/pasta/carbonara.png',
        price: 30),
    const Product(
        name: 'Bolognese',
        category: Category.pasta,
        assetPath: 'assets/products/pasta/bolognese.png',
        price: 24),
    const Product(
        name: 'Alfredo',
        category: Category.pasta,
        assetPath: 'assets/products/pasta/alfredo.png',
        price: 23),
    const Product(
        name: 'Pesto',
        category: Category.pasta,
        assetPath: 'assets/products/pasta/pesto.png',
        price: 17),
    const Product(
        name: 'Lasagna',
        category: Category.pasta,
        assetPath: 'assets/products/pasta/lasagna.png',
        price: 22),
    const Product(
        name: 'Ravioli',
        category: Category.pasta,
        assetPath: 'assets/products/pasta/ravioli.png',
        price: 25),
    const Product(
        name: 'Tiramisu',
        category: Category.dessert,
        assetPath: 'assets/products/dessert/tiramisu.png',
        price: 17),
    const Product(
        name: 'Cheesecake',
        category: Category.dessert,
        assetPath: 'assets/products/dessert/cheesecake.png',
        price: 11),
    const Product(
        name: 'Panna Cotta',
        category: Category.dessert,
        assetPath: 'assets/products/dessert/panna_cotta.png',
        price: 16),
    const Product(
        name: 'Creme Brulee',
        category: Category.dessert,
        assetPath: 'assets/products/dessert/creme_brulee.png',
        price: 20),
    const Product(
        name: 'Chocolate Fondant',
        category: Category.dessert,
        assetPath: 'assets/products/dessert/chocolate_fondant.png',
        price: 11),
    const Product(
        name: 'Fruit Sorbet',
        category: Category.dessert,
        assetPath: 'assets/products/dessert/fruit_sorbet.png',
        price: 8),
    const Product(
        name: 'Blueberry Lemonade',
        category: Category.beverages,
        assetPath: 'assets/products/beverages/blueberry_lemonade.png',
        price: 17),
    const Product(
        name: 'Lemonade',
        category: Category.beverages,
        assetPath: 'assets/products/beverages/lemonade.png',
        price: 15),
    const Product(
        name: 'Mojito',
        category: Category.beverages,
        assetPath: 'assets/products/beverages/mojito.png',
        price: 20),
    const Product(
        name: 'Fresh Grapefruit',
        category: Category.beverages,
        assetPath: 'assets/products/beverages/fresh_grapefruit.png',
        price: 18),
    const Product(
        name: 'Fresh Orange Juice',
        category: Category.beverages,
        assetPath: 'assets/products/beverages/fresh_orange_juice.png',
        price: 13),
    const Product(
        name: 'Strawberry Fresh',
        category: Category.beverages,
        assetPath: 'assets/products/beverages/strawberry_fresh.png',
        price: 21),
  ];
}

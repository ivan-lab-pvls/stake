import 'package:stake_lounge/data/product.dart';

class Selection {
  final bool isCategory;
  final String title;
  final List<Product> products;

  Selection(
      {required this.isCategory, required this.title, required this.products});

  static final selection1 = Selection(
    title: 'Breakfast',
    products: [
      ...Product.productList.where((element) =>
          element.name == 'California Roll' ||
          element.name == 'Panna Cotta' ||
          element.name == 'Fresh Orange Juice' ||
          element.name == 'Tempura Roll' ||
          element.name == 'Fruit Sorbet'),
    ],
    isCategory: false,
  );
  static final selection2 = Selection(
    title: 'Lunch',
    products: [
      ...Product.productList.where((element) =>
          element.name == 'Alfredo' ||
          element.name == 'Philadelphia Roll' ||
          element.name == 'Pesto' ||
          element.name == 'Creme Brulee' ||
          element.name == 'Lemonade'),
    ],
    isCategory: false,
  );
  static final selection3 = Selection(
    title: 'Dinner',
    products: [
      ...Product.productList.where((element) =>
          element.name == 'Lasagna' ||
          element.name == 'Four Cheese' ||
          element.name == 'Blueberry Lemonade' ||
          element.name == 'Bolognese' ||
          element.name == 'Nigiri'),
    ],
    isCategory: false,
  );
}

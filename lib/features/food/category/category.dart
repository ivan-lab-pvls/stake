import 'package:hive_flutter/hive_flutter.dart';

part 'category.g.dart';

@HiveType(typeId: 2)
enum Category {
  @HiveField(0)
  pizza('assets/categories/pizza.png'),
  @HiveField(1)
  sushi('assets/categories/sushi.png'),
  @HiveField(2)
  pasta('assets/categories/pasta.png'),
  @HiveField(3)
  dessert('assets/categories/dessert.png'),
  @HiveField(4)
  beverages('assets/categories/beverages.png');

  final String assetPath;

  const Category(this.assetPath);
}

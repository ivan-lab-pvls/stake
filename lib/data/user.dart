import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';

part 'user.g.dart';

@HiveType(typeId: 3)
class User {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final Uint8List image;

  User(this.name, this.image);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryAdapter extends TypeAdapter<Category> {
  @override
  final int typeId = 2;

  @override
  Category read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Category.pizza;
      case 1:
        return Category.sushi;
      case 2:
        return Category.pasta;
      case 3:
        return Category.dessert;
      case 4:
        return Category.beverages;
      default:
        return Category.pizza;
    }
  }

  @override
  void write(BinaryWriter writer, Category obj) {
    switch (obj) {
      case Category.pizza:
        writer.writeByte(0);
        break;
      case Category.sushi:
        writer.writeByte(1);
        break;
      case Category.pasta:
        writer.writeByte(2);
        break;
      case Category.dessert:
        writer.writeByte(3);
        break;
      case Category.beverages:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

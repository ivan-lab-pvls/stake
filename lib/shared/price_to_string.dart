priceToString(double price) =>
    '\$${price.toString().replaceAll(RegExp(r'([.]*0)(?!.*\d)'), '')}';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/features/food/product/widgets/product_category.dart';
import 'package:stake_lounge/features/food/product/widgets/product_name.dart';
import 'package:stake_lounge/features/food/product/widgets/product_price.dart';
import 'package:stake_lounge/router/router.dart';

class AppSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    if (query != '') {
      return [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: const Icon(Icons.clear_rounded))
      ];
    }
  }

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back_ios_new_rounded));

  @override
  Widget buildResults(BuildContext context) {
    List<Product> results = Product.productList
        .where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final result = results[index];
        return ListTile(
          leading: Image.asset(
            result.assetPath,
            width: 100,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
          title: ProductName(product: result),
          subtitle: ProductCategory(product: result),
          trailing: ProductPrice(product: result),
          onTap: () => context.router.push(ProductRoute(product: result)),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Product> suggestions;
    if (query == '') {
      suggestions = Product.productList;
    }
    suggestions = Product.productList
        .where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          leading: Image.asset(
            suggestion.assetPath,
            width: 100,
            height: 100,
          ),
          title: ProductName(product: suggestion),
          subtitle: ProductCategory(product: suggestion),
          trailing: ProductPrice(product: suggestion),
          onTap: () => context.router.push(ProductRoute(product: suggestion)),
        );
      },
    );
  }
}

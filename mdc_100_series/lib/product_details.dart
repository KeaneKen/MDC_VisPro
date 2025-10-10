import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/cart_repo.dart';
import 'model/product.dart';
import 'model/products_repository.dart';

class ProductDetailScreen extends StatelessWidget {
  final int productId;

  const ProductDetailScreen({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fetch the product using the ID
    final Product product = ProductsRepository.loadProduct(productId);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            product.assetName,
            package: product.assetPackage,
            fit: BoxFit.cover,
            height: 300, // Give the image a fixed height
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              product.name,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Price: IDR ${product.price}',
              style: theme.textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              child: const Text('ADD TO CART'),
              onPressed: () {
                final cart = Provider.of<CartRepo>(context, listen: false);
                cart.addItem(product);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${product.name} added to cart!')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
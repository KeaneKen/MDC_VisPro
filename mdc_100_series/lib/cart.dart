import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/cart_repo.dart';
import 'model/product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Consumer<CartRepo>(
        builder: (context, cart, child) {
          if (cart.items.isEmpty) {
            return const Center(
              child: Text('Your cart is empty.'),
            );
          }

          return ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              final Product product = cart.items[index];
              return ListTile(
                leading: Image.asset(
                  product.assetName,
                  package: product.assetPackage,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(product.name),
                subtitle: Text('IDR ${product.price}'),
                trailing: IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    cart.removeItem(product);
                  },
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Consumer<CartRepo>(
        builder: (context, cart, child) {
          return BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total: IDR ${cart.totalPrice}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement checkout
                    },
                    child: const Text('CHECKOUT'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

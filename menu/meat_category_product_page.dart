import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';
// Import the Dummy class

class MeatCategoryProductPage extends StatelessWidget {
  const MeatCategoryProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meat'),
        leading: const AppBackButton(),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: AppDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.85,
        ),
        itemCount: Meat.products.length,
        itemBuilder: (context, index) {
          final product = Meat.products[index];
          if (product.name == 'Beef Cube' ||
              product.name == 'Lamb Shanks' ||
              product.name == 'Sirloin' ||
              product.name == 'Ribeye') {
            return ProductTileSquare3(
              data3: product,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/productDetails', // Update with your route name
                  arguments: product,
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}

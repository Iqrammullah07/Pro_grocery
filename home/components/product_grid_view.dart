import 'package:flutter/material.dart';

import '../../../core/components/product_tile_square.dart';
import '../../../core/constants/constants.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: AppDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          childAspectRatio: 0.85,
        ),
        itemCount: Dummy.products.length, // Use the length of Dummy.products
        itemBuilder: (context, index) {
          final product = Dummy.products[index];
          return ProductTileSquare(
            data: product,
            onTap: () {},
          ); // Display each product
        },
      ),
    );
  }
}
